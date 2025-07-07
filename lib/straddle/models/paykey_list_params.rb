# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Paykeys#list
    class PaykeyListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Filter paykeys by related customer ID.
      #
      #   @return [String, nil]
      optional :customer_id, String

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

      # @!attribute sort_by
      #
      #   @return [Symbol, Straddle::Models::PaykeyListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::PaykeyListParams::SortBy }

      # @!attribute sort_order
      #
      #   @return [Symbol, Straddle::Models::PaykeyListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::PaykeyListParams::SortOrder }

      # @!attribute source
      #   Filter paykeys by their source.
      #
      #   @return [Array<Symbol, Straddle::Models::PaykeyListParams::Source>, nil]
      optional :source, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaykeyListParams::Source] }

      # @!attribute status
      #   Filter paykeys by their current status.
      #
      #   @return [Array<Symbol, Straddle::Models::PaykeyListParams::Status>, nil]
      optional :status, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaykeyListParams::Status] }

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

      # @!method initialize(customer_id: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, source: nil, status: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param customer_id [String] Filter paykeys by related customer ID.
      #
      #   @param page_number [Integer] Page number for paginated results. Starts at 1.
      #
      #   @param page_size [Integer] Number of results per page. Maximum: 1000.
      #
      #   @param sort_by [Symbol, Straddle::Models::PaykeyListParams::SortBy]
      #
      #   @param sort_order [Symbol, Straddle::Models::PaykeyListParams::SortOrder]
      #
      #   @param source [Array<Symbol, Straddle::Models::PaykeyListParams::Source>] Filter paykeys by their source.
      #
      #   @param status [Array<Symbol, Straddle::Models::PaykeyListParams::Status>] Filter paykeys by their current status.
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

        INSTITUTION_NAME = :institution_name
        EXPIRES_AT = :expires_at
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

      module Source
        extend Straddle::Internal::Type::Enum

        BANK_ACCOUNT = :bank_account
        STRADDLE = :straddle
        MX = :mx
        PLAID = :plaid
        TAN = :tan
        QUILTT = :quiltt

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend Straddle::Internal::Type::Enum

        PENDING = :pending
        ACTIVE = :active
        INACTIVE = :inactive
        REJECTED = :rejected
        REVIEW = :review

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
