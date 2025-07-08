# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Representatives#list
      class RepresentativeListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute account_id
        #   The unique identifier of the account to list representatives for.
        #
        #   @return [String, nil]
        optional :account_id, String

        # @!attribute level
        #
        #   @return [Symbol, Straddle::Models::Embed::RepresentativeListParams::Level, nil]
        optional :level, enum: -> { Straddle::Embed::RepresentativeListParams::Level }

        # @!attribute organization_id
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute page_number
        #   Results page number. Starts at page 1.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Page size. Max value: 1000
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute platform_id
        #
        #   @return [String, nil]
        optional :platform_id, String

        # @!attribute sort_by
        #   Sort By.
        #
        #   @return [String, nil]
        optional :sort_by, String

        # @!attribute sort_order
        #   Sort Order.
        #
        #   @return [Symbol, Straddle::Models::Embed::RepresentativeListParams::SortOrder, nil]
        optional :sort_order, enum: -> { Straddle::Embed::RepresentativeListParams::SortOrder }

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(account_id: nil, level: nil, organization_id: nil, page_number: nil, page_size: nil, platform_id: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   @param account_id [String] The unique identifier of the account to list representatives for.
        #
        #   @param level [Symbol, Straddle::Models::Embed::RepresentativeListParams::Level]
        #
        #   @param organization_id [String]
        #
        #   @param page_number [Integer] Results page number. Starts at page 1.
        #
        #   @param page_size [Integer] Page size. Max value: 1000
        #
        #   @param platform_id [String]
        #
        #   @param sort_by [String] Sort By.
        #
        #   @param sort_order [Symbol, Straddle::Models::Embed::RepresentativeListParams::SortOrder] Sort Order.
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        module Level
          extend Straddle::Internal::Type::Enum

          ACCOUNT = :account
          PLATFORM = :platform

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort Order.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
