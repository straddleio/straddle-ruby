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

      # @!attribute payment_status
      #   Payment status.
      #
      #   @return [Array<Symbol, Straddle::Models::FundingEventListParams::PaymentStatus>, nil]
      optional :payment_status,
               -> {
                 Straddle::Internal::Type::ArrayOf[enum: Straddle::FundingEventListParams::PaymentStatus]
               },
               nil?: true

      # @!attribute search_text
      #   Search text.
      #
      #   @return [String, nil]
      optional :search_text, String, nil?: true

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

      # @!attribute status
      #   Funding Event status.
      #
      #   @return [Array<Symbol, Straddle::Models::FundingEventListParams::Status>, nil]
      optional :status,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::FundingEventListParams::Status] },
               nil?: true

      # @!attribute status_reason
      #   Reason for latest payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::FundingEventListParams::StatusReason>, nil]
      optional :status_reason,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::FundingEventListParams::StatusReason] },
               nil?: true

      # @!attribute status_source
      #   Source of latest payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::FundingEventListParams::StatusSource>, nil]
      optional :status_source,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::FundingEventListParams::StatusSource] },
               nil?: true

      # @!attribute trace_id
      #   Trace Id.
      #
      #   @return [String, nil]
      optional :trace_id, String, nil?: true

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

      # @!method initialize(created_from: nil, created_to: nil, direction: nil, event_type: nil, page_number: nil, page_size: nil, payment_status: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, status_reason: nil, status_source: nil, trace_id: nil, trace_number: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      #   @param payment_status [Array<Symbol, Straddle::Models::FundingEventListParams::PaymentStatus>, nil] Payment status.
      #
      #   @param search_text [String, nil] Search text.
      #
      #   @param sort_by [Symbol, Straddle::Models::FundingEventListParams::SortBy] The field to sort the results by.
      #
      #   @param sort_order [Symbol, Straddle::Models::FundingEventListParams::SortOrder] The order in which to sort the results.
      #
      #   @param status [Array<Symbol, Straddle::Models::FundingEventListParams::Status>, nil] Funding Event status.
      #
      #   @param status_reason [Array<Symbol, Straddle::Models::FundingEventListParams::StatusReason>, nil] Reason for latest payment status change.
      #
      #   @param status_source [Array<Symbol, Straddle::Models::FundingEventListParams::StatusSource>, nil] Source of latest payment status change.
      #
      #   @param trace_id [String, nil] Trace Id.
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
        CHARGE_DEPOSIT_2 = :ChargeDeposit
        CHARGE_REVERSAL = :charge_reversal
        CHARGE_REVERSAL_2 = :ChargeReversal
        PAYOUT_RETURN = :payout_return
        PAYOUT_RETURN_2 = :PayoutReturn
        PAYOUT_WITHDRAWAL = :payout_withdrawal
        PAYOUT_WITHDRAWAL_2 = :PayoutWithdrawal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the `charge` or `payout`.
      module PaymentStatus
        extend Straddle::Internal::Type::Enum

        CREATED = :created
        CREATED_2 = :Created
        SCHEDULED = :scheduled
        SCHEDULED_2 = :Scheduled
        FAILED = :failed
        FAILED_2 = :Failed
        CANCELLED = :cancelled
        CANCELLED_2 = :Cancelled
        ON_HOLD = :on_hold
        ON_HOLD_2 = :OnHold
        PENDING = :pending
        PENDING_2 = :Pending
        PAID = :paid
        PAID_2 = :Paid
        REVERSED = :reversed
        REVERSED_2 = :Reversed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        TRANSFER_DATE = :transfer_date
        TRANSFER_DATE_2 = :TransferDate
        ID = :id
        ID_2 = :Id
        AMOUNT = :amount
        AMOUNT_2 = :Amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The order in which to sort the results.
      module SortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        ASC_2 = :Asc
        DESC = :desc
        DESC_2 = :Desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current status of the `charge` or `payout`.
      module Status
        extend Straddle::Internal::Type::Enum

        CREATED = :created
        CREATED_2 = :Created
        SCHEDULED = :scheduled
        SCHEDULED_2 = :Scheduled
        FAILED = :failed
        FAILED_2 = :Failed
        CANCELLED = :cancelled
        CANCELLED_2 = :Cancelled
        ON_HOLD = :on_hold
        ON_HOLD_2 = :OnHold
        PENDING = :pending
        PENDING_2 = :Pending
        PAID = :paid
        PAID_2 = :Paid
        REVERSED = :reversed
        REVERSED_2 = :Reversed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module StatusReason
        extend Straddle::Internal::Type::Enum

        INSUFFICIENT_FUNDS = :insufficient_funds
        INSUFFICIENT_FUNDS_2 = :InsufficientFunds
        CLOSED_BANK_ACCOUNT = :closed_bank_account
        CLOSED_BANK_ACCOUNT_2 = :ClosedBankAccount
        INVALID_BANK_ACCOUNT = :invalid_bank_account
        INVALID_BANK_ACCOUNT_2 = :InvalidBankAccount
        INVALID_ROUTING = :invalid_routing
        INVALID_ROUTING_2 = :InvalidRouting
        DISPUTED = :disputed
        DISPUTED_2 = :Disputed
        PAYMENT_STOPPED = :payment_stopped
        PAYMENT_STOPPED_2 = :PaymentStopped
        OWNER_DECEASED = :owner_deceased
        OWNER_DECEASED_2 = :OwnerDeceased
        FROZEN_BANK_ACCOUNT = :frozen_bank_account
        FROZEN_BANK_ACCOUNT_2 = :FrozenBankAccount
        RISK_REVIEW = :risk_review
        RISK_REVIEW_2 = :RiskReview
        FRAUDULENT = :fraudulent
        FRAUDULENT_2 = :Fraudulent
        DUPLICATE_ENTRY = :duplicate_entry
        DUPLICATE_ENTRY_2 = :DuplicateEntry
        INVALID_PAYKEY = :invalid_paykey
        INVALID_PAYKEY_2 = :InvalidPaykey
        PAYMENT_BLOCKED = :payment_blocked
        PAYMENT_BLOCKED_2 = :PaymentBlocked
        AMOUNT_TOO_LARGE = :amount_too_large
        AMOUNT_TOO_LARGE_2 = :AmountTooLarge
        TOO_MANY_ATTEMPTS = :too_many_attempts
        TOO_MANY_ATTEMPTS_2 = :TooManyAttempts
        INTERNAL_SYSTEM_ERROR = :internal_system_error
        INTERNAL_SYSTEM_ERROR_2 = :InternalSystemError
        USER_REQUEST = :user_request
        USER_REQUEST_2 = :UserRequest
        OK = :ok
        OK_2 = :Ok
        OTHER_NETWORK_RETURN = :other_network_return
        OTHER_NETWORK_RETURN_2 = :OtherNetworkReturn
        PAYOUT_REFUSED = :payout_refused
        PAYOUT_REFUSED_2 = :PayoutRefused
        CANCEL_REQUEST = :cancel_request
        FAILED_VERIFICATION = :failed_verification
        REQUIRE_REVIEW = :require_review
        BLOCKED_BY_SYSTEM = :blocked_by_system
        WATCHTOWER_REVIEW = :watchtower_review

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module StatusSource
        extend Straddle::Internal::Type::Enum

        WATCHTOWER = :watchtower
        WATCHTOWER_2 = :Watchtower
        BANK_DECLINE = :bank_decline
        BANK_DECLINE_2 = :BankDecline
        CUSTOMER_DISPUTE = :customer_dispute
        CUSTOMER_DISPUTE_2 = :CustomerDispute
        USER_ACTION = :user_action
        USER_ACTION_2 = :UserAction
        SYSTEM = :system
        SYSTEM_2 = :System

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
