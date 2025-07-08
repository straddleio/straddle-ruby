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
        CLOSED_BANK_ACCOUNT = :closed_bank_account
        INVALID_BANK_ACCOUNT = :invalid_bank_account
        INVALID_ROUTING = :invalid_routing
        DISPUTED = :disputed
        PAYMENT_STOPPED = :payment_stopped
        OWNER_DECEASED = :owner_deceased
        FROZEN_BANK_ACCOUNT = :frozen_bank_account
        RISK_REVIEW = :risk_review
        FRAUDULENT = :fraudulent
        DUPLICATE_ENTRY = :duplicate_entry
        INVALID_PAYKEY = :invalid_paykey
        PAYMENT_BLOCKED = :payment_blocked
        AMOUNT_TOO_LARGE = :amount_too_large
        TOO_MANY_ATTEMPTS = :too_many_attempts
        INTERNAL_SYSTEM_ERROR = :internal_system_error
        USER_REQUEST = :user_request
        OK = :ok
        OTHER_NETWORK_RETURN = :other_network_return
        PAYOUT_REFUSED = :payout_refused

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
        BANK_DECLINE = :bank_decline
        CUSTOMER_DISPUTE = :customer_dispute
        USER_ACTION = :user_action
        SYSTEM = :system

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
