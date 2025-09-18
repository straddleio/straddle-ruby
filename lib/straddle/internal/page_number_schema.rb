# frozen_string_literal: true

module Straddle
  module Internal
    # @generic Elem
    #
    # @example
    #   if page_number_schema.has_next?
    #     page_number_schema = page_number_schema.next_page
    #   end
    #
    # @example
    #   page_number_schema.auto_paging_each do |account|
    #     puts(account)
    #   end
    class PageNumberSchema
      include Straddle::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !data.to_a.empty?
      end

      # @raise [Straddle::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Straddle::Internal::Util.deep_merge(
          @req,
          {
            query: {
              page_number: @req.fetch(:query).fetch(
                :page_number, 1
              ).to_i.succ
            }
          }
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Straddle::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Straddle::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {meta: Hash | nil => meta}
          @meta = Straddle::Internal::Type::Converter.coerce(Straddle::Internal::PageNumberSchema::Meta, meta)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Straddle::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Meta < Straddle::Internal::Type::BaseModel
        # @!attribute max_page_size
        #
        #   @return [Integer, nil]
        optional :max_page_size, Integer

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_items
        #
        #   @return [Integer, nil]
        optional :total_items, Integer

        # @!method initialize(max_page_size: nil, page_number: nil, page_size: nil, total_items: nil)
        #   @param max_page_size [Integer]
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_items [Integer]
      end
    end
  end
end
