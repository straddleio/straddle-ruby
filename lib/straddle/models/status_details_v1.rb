# frozen_string_literal: true

module Straddle
  module Models
    class StatusDetailsV1 < Straddle::Internal::Type::BaseModel
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
      #   A machine-readable identifier for the specific status, useful for programmatic
      #   handling.
      #
      #   @return [Symbol, Straddle::Models::StatusDetailsV1::Reason]
      required :reason, enum: -> { Straddle::StatusDetailsV1::Reason }

      # @!attribute source
      #   Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
      #   This helps in tracking the cause of status updates.
      #
      #   @return [Symbol, Straddle::Models::StatusDetailsV1::Source]
      required :source, enum: -> { Straddle::StatusDetailsV1::Source }

      # @!attribute code
      #   The status code if applicable.
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!method initialize(changed_at:, message:, reason:, source:, code: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::StatusDetailsV1} for more details.
      #
      #   @param changed_at [Time] The time the status change occurred.
      #
      #   @param message [String] A human-readable description of the current status.
      #
      #   @param reason [Symbol, Straddle::Models::StatusDetailsV1::Reason] A machine-readable identifier for the specific status, useful for programmatic h
      #
      #   @param source [Symbol, Straddle::Models::StatusDetailsV1::Source] Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
      #
      #   @param code [String, nil] The status code if applicable.

      # A machine-readable identifier for the specific status, useful for programmatic
      # handling.
      #
      # @see Straddle::Models::StatusDetailsV1#reason
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

      # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
      # This helps in tracking the cause of status updates.
      #
      # @see Straddle::Models::StatusDetailsV1#source
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
end
