# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::FundingEvents#list
    class FundingEventListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute created_from
      #   The start date of the range to filter by using the `YYYY-MM-DD` format.
      #
      #   @return [Date, nil]
      optional :created_from, Date, nil?: true

      # @!attribute created_to
      #   The end date of the range to filter by using the `YYYY-MM-DD` format.
      #
      #   @return [Date, nil]
      optional :created_to, Date, nil?: true

      # @!attribute direction
      #   Describes the direction of the funding event from the perspective of the
      #   `linked_bank_account`.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListParams::Direction, nil]
      optional :direction, enum: -> { Straddle::FundingEventListParams::Direction }

      # @!attribute event_type
      #   The funding event types describes the direction and reason for the funding
      #   event.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListParams::EventType, nil]
      optional :event_type, enum: -> { Straddle::FundingEventListParams::EventType }

      # @!attribute page_number
      #   Results page number. Starts at page 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Results page size. Max value: 1000
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort_by
      #   The field to sort the results by.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::FundingEventListParams::SortBy }

      # @!attribute sort_order
      #   The order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::FundingEventListParams::SortOrder }

      # @!attribute trace_number
      #   Trace number.
      #
      #   @return [String, nil]
      optional :trace_number, String, nil?: true

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

      # @!method initialize(created_from: nil, created_to: nil, direction: nil, event_type: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, trace_number: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEventListParams} for more details.
      #
      #   @param created_from [Date, nil] The start date of the range to filter by using the `YYYY-MM-DD` format.
      #
      #   @param created_to [Date, nil] The end date of the range to filter by using the `YYYY-MM-DD` format.
      #
      #   @param direction [Symbol, Straddle::Models::FundingEventListParams::Direction] Describes the direction of the funding event from the perspective of the `linked
      #
      #   @param event_type [Symbol, Straddle::Models::FundingEventListParams::EventType] The funding event types describes the direction and reason for the funding event
      #
      #   @param page_number [Integer] Results page number. Starts at page 1.
      #
      #   @param page_size [Integer] Results page size. Max value: 1000
      #
      #   @param sort_by [Symbol, Straddle::Models::FundingEventListParams::SortBy] The field to sort the results by.
      #
      #   @param sort_order [Symbol, Straddle::Models::FundingEventListParams::SortOrder] The order in which to sort the results.
      #
      #   @param trace_number [String, nil] Trace number.
      #
      #   @param correlation_id [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      # Describes the direction of the funding event from the perspective of the
      # `linked_bank_account`.
      module Direction
        extend Straddle::Internal::Type::Enum

        DEPOSIT = :deposit
        WITHDRAWAL = :withdrawal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The funding event types describes the direction and reason for the funding
      # event.
      module EventType
        extend Straddle::Internal::Type::Enum

        CHARGE_DEPOSIT = :charge_deposit
        CHARGE_REVERSAL = :charge_reversal
        PAYOUT_RETURN = :payout_return
        PAYOUT_WITHDRAWAL = :payout_withdrawal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        TRANSFER_DATE = :transfer_date
        ID = :id
        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The order in which to sort the results.
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
