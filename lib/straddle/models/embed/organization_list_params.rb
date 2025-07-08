# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Organizations#list
      class OrganizationListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute external_id
        #   List organizations by their external ID.
        #
        #   @return [String, nil]
        optional :external_id, String

        # @!attribute name
        #   List organizations by name (partial match supported).
        #
        #   @return [String, nil]
        optional :name, String

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

        # @!attribute sort_by
        #   Sort By.
        #
        #   @return [String, nil]
        optional :sort_by, String

        # @!attribute sort_order
        #   Sort Order.
        #
        #   @return [Symbol, Straddle::Models::Embed::OrganizationListParams::SortOrder, nil]
        optional :sort_order, enum: -> { Straddle::Embed::OrganizationListParams::SortOrder }

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(external_id: nil, name: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   @param external_id [String] List organizations by their external ID.
        #
        #   @param name [String] List organizations by name (partial match supported).
        #
        #   @param page_number [Integer] Results page number. Starts at page 1.
        #
        #   @param page_size [Integer] Page size. Max value: 1000
        #
        #   @param sort_by [String] Sort By.
        #
        #   @param sort_order [Symbol, Straddle::Models::Embed::OrganizationListParams::SortOrder] Sort Order.
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

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
