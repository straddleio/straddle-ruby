# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Straddle::Models::FundingEventSummaryPagedV1::Data>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::FundingEventSummaryPagedV1::Data] }

      # @!attribute meta
      #
      #   @return [Straddle::Models::FundingEventSummaryPagedV1::Meta]
      required :meta, -> { Straddle::FundingEventSummaryPagedV1::Meta }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::ResponseType]
      required :response_type, enum: -> { Straddle::FundingEventSummaryPagedV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEventSummaryPagedV1} for more details.
      #
      #   @param data [Array<Straddle::Models::FundingEventSummaryPagedV1::Data>]
      #
      #   @param meta [Straddle::Models::FundingEventSummaryPagedV1::Meta]
      #
      #   @param response_type [Symbol, Straddle::Models::FundingEventSummaryPagedV1::ResponseType] Indicates the structure of the returned content.

      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the funding event.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the funding event in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #   Created at.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute direction
        #   Describes the direction of the funding event from the perspective of the
        #   `linked_bank_account`.
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Direction]
        required :direction, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::Direction }

        # @!attribute event_type
        #   The funding event types describes the direction and reason for the funding
        #   event.
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::EventType]
        required :event_type, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::EventType }

        # @!attribute payment_count
        #   The number of payments associated with the funding event.
        #
        #   @return [Integer]
        required :payment_count, Integer

        # @!attribute trace_ids
        #   Trace Ids.
        #
        #   @return [Hash{Symbol=>String}]
        required :trace_ids, Straddle::Internal::Type::HashOf[String]

        # @!attribute trace_numbers
        #   Trace number.
        #
        #   @return [Array<String>]
        required :trace_numbers, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute transfer_date
        #   The date on which the funding event occurred. For `deposits` and `returns`, this
        #   is the date the funds were credited to your bank account. For `withdrawals` and
        #   `reversals`, this is the date the funds were debited from your bank account.
        #
        #   @return [Date]
        required :transfer_date, Date

        # @!attribute updated_at
        #   Updated at.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute status
        #   The current status of the `charge` or `payout`.
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Status, nil]
        optional :status, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::Status }

        # @!attribute status_details
        #
        #   @return [Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::FundingEventSummaryPagedV1::Data::StatusDetails }

        # @!attribute trace_number
        #   The trace number of the funding event.
        #
        #   @return [String, nil]
        optional :trace_number, String, nil?: true

        # @!method initialize(id:, amount:, created_at:, direction:, event_type:, payment_count:, trace_ids:, trace_numbers:, transfer_date:, updated_at:, status: nil, status_details: nil, trace_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::FundingEventSummaryPagedV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the funding event.
        #
        #   @param amount [Integer] The amount of the funding event in cents.
        #
        #   @param created_at [Time] Created at.
        #
        #   @param direction [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Direction] Describes the direction of the funding event from the perspective of the `linked
        #
        #   @param event_type [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::EventType] The funding event types describes the direction and reason for the funding event
        #
        #   @param payment_count [Integer] The number of payments associated with the funding event.
        #
        #   @param trace_ids [Hash{Symbol=>String}] Trace Ids.
        #
        #   @param trace_numbers [Array<String>] Trace number.
        #
        #   @param transfer_date [Date] The date on which the funding event occurred. For `deposits` and `returns`, this
        #
        #   @param updated_at [Time] Updated at.
        #
        #   @param status [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Status] The current status of the `charge` or `payout`.
        #
        #   @param status_details [Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails]
        #
        #   @param trace_number [String, nil] The trace number of the funding event.

        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        #
        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#direction
        module Direction
          extend Straddle::Internal::Type::Enum

          DEPOSIT = :deposit
          WITHDRAWAL = :withdrawal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The funding event types describes the direction and reason for the funding
        # event.
        #
        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#event_type
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
        #
        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#status
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

        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#status_details
        class StatusDetails < Straddle::Internal::Type::BaseModel
          # @!attribute changed_at
          #   The time the status change occurred.
          #
          #   @return [Time]
          required :changed_at, Time

          # @!attribute message
          #   A human-readable description of the current status.
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #
          #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::StatusDetails::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails::Source]
          required :source, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::StatusDetails::Source }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, code: nil)
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the current status.
          #
          #   @param reason [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails::Reason]
          #
          #   @param source [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails::Source]
          #
          #   @param code [String, nil] The status code if applicable.

          # @see Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails#reason
          module Reason
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

          # @see Straddle::Models::FundingEventSummaryPagedV1::Data::StatusDetails#source
          module Source
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

      # @see Straddle::Models::FundingEventSummaryPagedV1#meta
      class Meta < Straddle::Internal::Type::BaseModel
        # @!attribute api_request_id
        #   Unique identifier for this API request, useful for troubleshooting.
        #
        #   @return [String]
        required :api_request_id, String

        # @!attribute api_request_timestamp
        #   Timestamp for this API request, useful for troubleshooting.
        #
        #   @return [Time]
        required :api_request_timestamp, Time

        # @!attribute max_page_size
        #   Maximum allowed page size for this endpoint.
        #
        #   @return [Integer]
        required :max_page_size, Integer

        # @!attribute page_number
        #   Page number for paginated results.
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   Number of items per page in this response.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute sort_by
        #   The field that the results were sorted by.
        #
        #   @return [String]
        required :sort_by, String

        # @!attribute sort_order
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Meta::SortOrder]
        required :sort_order, enum: -> { Straddle::FundingEventSummaryPagedV1::Meta::SortOrder }

        # @!attribute total_items
        #
        #   @return [Integer]
        required :total_items, Integer

        # @!attribute total_pages
        #   The number of pages available.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!method initialize(api_request_id:, api_request_timestamp:, max_page_size:, page_number:, page_size:, sort_by:, sort_order:, total_items:, total_pages:)
        #   @param api_request_id [String] Unique identifier for this API request, useful for troubleshooting.
        #
        #   @param api_request_timestamp [Time] Timestamp for this API request, useful for troubleshooting.
        #
        #   @param max_page_size [Integer] Maximum allowed page size for this endpoint.
        #
        #   @param page_number [Integer] Page number for paginated results.
        #
        #   @param page_size [Integer] Number of items per page in this response.
        #
        #   @param sort_by [String] The field that the results were sorted by.
        #
        #   @param sort_order [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Meta::SortOrder]
        #
        #   @param total_items [Integer]
        #
        #   @param total_pages [Integer] The number of pages available.

        # @see Straddle::Models::FundingEventSummaryPagedV1::Meta#sort_order
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          ASC_2 = :Asc
          DESC = :desc
          DESC_2 = :Desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      #
      # @see Straddle::Models::FundingEventSummaryPagedV1#response_type
      module ResponseType
        extend Straddle::Internal::Type::Enum

        OBJECT = :object
        OBJECT_2 = :Object
        ARRAY = :array
        ARRAY_2 = :Array
        ERROR = :error
        ERROR_2 = :Error
        NONE = :none
        NONE_2 = :None

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
