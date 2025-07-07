# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      module Accounts
        # @see Straddle::Resources::Embed::Accounts::CapabilityRequests#list
        class CapabilityRequestListParams < Straddle::Internal::Type::BaseModel
          extend Straddle::Internal::Type::RequestParameters::Converter
          include Straddle::Internal::Type::RequestParameters

          # @!attribute category
          #   Filter capability requests by category.
          #
          #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Category, nil]
          optional :category, enum: -> { Straddle::Embed::Accounts::CapabilityRequestListParams::Category }

          # @!attribute page_number
          #   Results page number. Starts at page 1.
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #   Page size.Max value: 1000
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
          #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::SortOrder, nil]
          optional :sort_order, enum: -> { Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder }

          # @!attribute status
          #   Filter capability requests by their current status.
          #
          #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Status, nil]
          optional :status, enum: -> { Straddle::Embed::Accounts::CapabilityRequestListParams::Status }

          # @!attribute type
          #   Filter capability requests by the specific type of capability.
          #
          #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Type, nil]
          optional :type, enum: -> { Straddle::Embed::Accounts::CapabilityRequestListParams::Type }

          # @!attribute correlation_id
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!attribute request_id
          #
          #   @return [String, nil]
          optional :request_id, String

          # @!method initialize(category: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
          #   @param category [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Category] Filter capability requests by category.
          #
          #   @param page_number [Integer] Results page number. Starts at page 1.
          #
          #   @param page_size [Integer] Page size.Max value: 1000
          #
          #   @param sort_by [String] Sort By.
          #
          #   @param sort_order [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::SortOrder] Sort Order.
          #
          #   @param status [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Status] Filter capability requests by their current status.
          #
          #   @param type [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Type] Filter capability requests by the specific type of capability.
          #
          #   @param correlation_id [String]
          #
          #   @param request_id [String]
          #
          #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

          # Filter capability requests by category.
          module Category
            extend Straddle::Internal::Type::Enum

            PAYMENT_TYPE = :payment_type
            CUSTOMER_TYPE = :customer_type
            CONSENT_TYPE = :consent_type

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

          # Filter capability requests by their current status.
          module Status
            extend Straddle::Internal::Type::Enum

            ACTIVE = :active
            INACTIVE = :inactive
            IN_REVIEW = :in_review
            REJECTED = :rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter capability requests by the specific type of capability.
          module Type
            extend Straddle::Internal::Type::Enum

            CHARGES = :charges
            PAYOUTS = :payouts
            INDIVIDUALS = :individuals
            BUSINESSES = :businesses
            SIGNED_AGREEMENT = :signed_agreement
            INTERNET = :internet

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
