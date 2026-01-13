# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payments#list
    class PaymentListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Search using the `customer_id` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute default_page_size
      #
      #   @return [Integer, nil]
      optional :default_page_size, Integer

      # @!attribute default_sort
      #   The field to sort the results by.
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::DefaultSort, nil]
      optional :default_sort, enum: -> { Straddle::PaymentListParams::DefaultSort }

      # @!attribute default_sort_order
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::DefaultSortOrder, nil]
      optional :default_sort_order, enum: -> { Straddle::PaymentListParams::DefaultSortOrder }

      # @!attribute external_id
      #   Search using the `external_id` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute funding_id
      #   Search using the `funding_id` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :funding_id, String

      # @!attribute max_amount
      #   Search using a maximum `amount` of a `charge` or `payout`.
      #
      #   @return [Integer, nil]
      optional :max_amount, Integer

      # @!attribute max_created_at
      #   Search using the latest `created_at` date of a `charge` or `payout`.
      #
      #   @return [Time, nil]
      optional :max_created_at, Time

      # @!attribute max_effective_at
      #   Search using the latest `effective_date` of a `charge` or `payout`.
      #
      #   @return [Time, nil]
      optional :max_effective_at, Time

      # @!attribute max_payment_date
      #   Search using the latest `payment_date` of a `charge` or `payout`.
      #
      #   @return [Date, nil]
      optional :max_payment_date, Date

      # @!attribute min_amount
      #   Search using the minimum `amount of a `charge`or`payout`.
      #
      #   @return [Integer, nil]
      optional :min_amount, Integer

      # @!attribute min_created_at
      #   Search using the earliest `created_at` date of a `charge` or `payout`.
      #
      #   @return [Time, nil]
      optional :min_created_at, Time

      # @!attribute min_effective_at
      #   Search using the earliest `effective_date` of a `charge` or `payout`.
      #
      #   @return [Time, nil]
      optional :min_effective_at, Time

      # @!attribute min_payment_date
      #   Search using the earliest ` `of a `charge` or `payout`.
      #
      #   @return [Date, nil]
      optional :min_payment_date, Date

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

      # @!attribute paykey
      #   Search using the `paykey` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :paykey, String

      # @!attribute paykey_id
      #   Search using the `paykey_id` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :paykey_id, String

      # @!attribute payment_id
      #   Search using the `id` of a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :payment_id, String

      # @!attribute payment_status
      #   Search by the status of a `charge` or `payout`.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentListParams::PaymentStatus>, nil]
      optional :payment_status,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentListParams::PaymentStatus] }

      # @!attribute payment_type
      #   Search by the type of a `charge` or `payout`.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentListParams::PaymentType>, nil]
      optional :payment_type,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentListParams::PaymentType] }

      # @!attribute search_text
      #   Search using a text string associated with a `charge` or `payout`.
      #
      #   @return [String, nil]
      optional :search_text, String

      # @!attribute sort_by
      #   The field to sort the results by.
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::PaymentListParams::SortBy }

      # @!attribute sort_order
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::PaymentListParams::SortOrder }

      # @!attribute status_reason
      #   Reason for latest payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentListParams::StatusReason>, nil]
      optional :status_reason,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentListParams::StatusReason] }

      # @!attribute status_source
      #   Source of latest payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentListParams::StatusSource>, nil]
      optional :status_source,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentListParams::StatusSource] }

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

      # @!method initialize(customer_id: nil, default_page_size: nil, default_sort: nil, default_sort_order: nil, external_id: nil, funding_id: nil, max_amount: nil, max_created_at: nil, max_effective_at: nil, max_payment_date: nil, min_amount: nil, min_created_at: nil, min_effective_at: nil, min_payment_date: nil, page_number: nil, page_size: nil, paykey: nil, paykey_id: nil, payment_id: nil, payment_status: nil, payment_type: nil, search_text: nil, sort_by: nil, sort_order: nil, status_reason: nil, status_source: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param customer_id [String] Search using the `customer_id` of a `charge` or `payout`.
      #
      #   @param default_page_size [Integer]
      #
      #   @param default_sort [Symbol, Straddle::Models::PaymentListParams::DefaultSort] The field to sort the results by.
      #
      #   @param default_sort_order [Symbol, Straddle::Models::PaymentListParams::DefaultSortOrder]
      #
      #   @param external_id [String] Search using the `external_id` of a `charge` or `payout`.
      #
      #   @param funding_id [String] Search using the `funding_id` of a `charge` or `payout`.
      #
      #   @param max_amount [Integer] Search using a maximum `amount` of a `charge` or `payout`.
      #
      #   @param max_created_at [Time] Search using the latest `created_at` date of a `charge` or `payout`.
      #
      #   @param max_effective_at [Time] Search using the latest `effective_date` of a `charge` or `payout`.
      #
      #   @param max_payment_date [Date] Search using the latest `payment_date` of a `charge` or `payout`.
      #
      #   @param min_amount [Integer] Search using the minimum `amount of a `charge`or`payout`.
      #
      #   @param min_created_at [Time] Search using the earliest `created_at` date of a `charge` or `payout`.
      #
      #   @param min_effective_at [Time] Search using the earliest `effective_date` of a `charge` or `payout`.
      #
      #   @param min_payment_date [Date] Search using the earliest ` `of a `charge` or `payout`.
      #
      #   @param page_number [Integer] Results page number. Starts at page 1.
      #
      #   @param page_size [Integer] Results page size. Max value: 1000
      #
      #   @param paykey [String] Search using the `paykey` of a `charge` or `payout`.
      #
      #   @param paykey_id [String] Search using the `paykey_id` of a `charge` or `payout`.
      #
      #   @param payment_id [String] Search using the `id` of a `charge` or `payout`.
      #
      #   @param payment_status [Array<Symbol, Straddle::Models::PaymentListParams::PaymentStatus>] Search by the status of a `charge` or `payout`.
      #
      #   @param payment_type [Array<Symbol, Straddle::Models::PaymentListParams::PaymentType>] Search by the type of a `charge` or `payout`.
      #
      #   @param search_text [String] Search using a text string associated with a `charge` or `payout`.
      #
      #   @param sort_by [Symbol, Straddle::Models::PaymentListParams::SortBy] The field to sort the results by.
      #
      #   @param sort_order [Symbol, Straddle::Models::PaymentListParams::SortOrder]
      #
      #   @param status_reason [Array<Symbol, Straddle::Models::PaymentListParams::StatusReason>] Reason for latest payment status change.
      #
      #   @param status_source [Array<Symbol, Straddle::Models::PaymentListParams::StatusSource>] Source of latest payment status change.
      #
      #   @param correlation_id [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      # The field to sort the results by.
      module DefaultSort
        extend Straddle::Internal::Type::Enum

        CREATED_AT = :created_at
        CREATED_AT_2 = :CreatedAt
        PAYMENT_DATE = :payment_date
        PAYMENT_DATE_2 = :PaymentDate
        EFFECTIVE_AT = :effective_at
        EFFECTIVE_AT_2 = :EffectiveAt
        ID = :id
        ID_2 = :Id
        AMOUNT = :amount
        AMOUNT_2 = :Amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module DefaultSortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        ASC_2 = :Asc
        DESC = :desc
        DESC_2 = :Desc

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

      # The type of payment.
      module PaymentType
        extend Straddle::Internal::Type::Enum

        CHARGE = :charge
        CHARGE_2 = :Charge
        PAYOUT = :payout
        PAYOUT_2 = :Payout

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        CREATED_AT = :created_at
        CREATED_AT_2 = :CreatedAt
        PAYMENT_DATE = :payment_date
        PAYMENT_DATE_2 = :PaymentDate
        EFFECTIVE_AT = :effective_at
        EFFECTIVE_AT_2 = :EffectiveAt
        ID = :id
        ID_2 = :Id
        AMOUNT = :amount
        AMOUNT_2 = :Amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        ASC_2 = :Asc
        DESC = :desc
        DESC_2 = :Desc

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
