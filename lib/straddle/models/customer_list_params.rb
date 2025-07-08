# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Customers#list
    class CustomerListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute created_from
      #   Start date for filtering by `created_at` date.
      #
      #   @return [Time, nil]
      optional :created_from, Time

      # @!attribute created_to
      #   End date for filtering by `created_at` date.
      #
      #   @return [Time, nil]
      optional :created_to, Time

      # @!attribute email
      #   Filter customers by `email` address.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute external_id
      #   Filter by your system's `external_id`.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute name
      #   Filter customers by `name` (partial match).
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page_number
      #   Page number for paginated results. Starts at 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page. Maximum: 1000.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute search_text
      #   General search term to filter customers.
      #
      #   @return [String, nil]
      optional :search_text, String

      # @!attribute sort_by
      #
      #   @return [Symbol, Straddle::Models::CustomerListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::CustomerListParams::SortBy }

      # @!attribute sort_order
      #
      #   @return [Symbol, Straddle::Models::CustomerListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::CustomerListParams::SortOrder }

      # @!attribute status
      #   Filter customers by their current `status`.
      #
      #   @return [Array<Symbol, Straddle::Models::CustomerListParams::Status>, nil]
      optional :status, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::CustomerListParams::Status] }

      # @!attribute types
      #   Filter by customer type `individual` or `business`.
      #
      #   @return [Array<Symbol, Straddle::Models::CustomerListParams::Type>, nil]
      optional :types, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::CustomerListParams::Type] }

      # @!attribute correlation_id
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(created_from: nil, created_to: nil, email: nil, external_id: nil, name: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, types: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param created_from [Time] Start date for filtering by `created_at` date.
      #
      #   @param created_to [Time] End date for filtering by `created_at` date.
      #
      #   @param email [String] Filter customers by `email` address.
      #
      #   @param external_id [String] Filter by your system's `external_id`.
      #
      #   @param name [String] Filter customers by `name` (partial match).
      #
      #   @param page_number [Integer] Page number for paginated results. Starts at 1.
      #
      #   @param page_size [Integer] Number of results per page. Maximum: 1000.
      #
      #   @param search_text [String] General search term to filter customers.
      #
      #   @param sort_by [Symbol, Straddle::Models::CustomerListParams::SortBy]
      #
      #   @param sort_order [Symbol, Straddle::Models::CustomerListParams::SortOrder]
      #
      #   @param status [Array<Symbol, Straddle::Models::CustomerListParams::Status>] Filter customers by their current `status`.
      #
      #   @param types [Array<Symbol, Straddle::Models::CustomerListParams::Type>] Filter by customer type `individual` or `business`.
      #
      #   @param correlation_id [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module SortBy
        extend Straddle::Internal::Type::Enum

        NAME = :name
        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend Straddle::Internal::Type::Enum

        PENDING = :pending
        REVIEW = :review
        VERIFIED = :verified
        INACTIVE = :inactive
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Type
        extend Straddle::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
