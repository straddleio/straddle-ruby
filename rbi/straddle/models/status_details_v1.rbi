# typed: strong

module Straddle
  module Models
    class StatusDetailsV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::StatusDetailsV1, Straddle::Internal::AnyHash)
        end

      # The time the status change occurred.
      sig { returns(Time) }
      attr_accessor :changed_at

      # A human-readable description of the current status.
      sig { returns(String) }
      attr_accessor :message

      # A machine-readable identifier for the specific status, useful for programmatic
      # handling.
      sig { returns(Straddle::StatusDetailsV1::Reason::TaggedSymbol) }
      attr_accessor :reason

      # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
      # This helps in tracking the cause of status updates.
      sig { returns(Straddle::StatusDetailsV1::Source::TaggedSymbol) }
      attr_accessor :source

      # The status code if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      sig do
        params(
          changed_at: Time,
          message: String,
          reason: Straddle::StatusDetailsV1::Reason::OrSymbol,
          source: Straddle::StatusDetailsV1::Source::OrSymbol,
          code: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the status change occurred.
        changed_at:,
        # A human-readable description of the current status.
        message:,
        # A machine-readable identifier for the specific status, useful for programmatic
        # handling.
        reason:,
        # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
        # This helps in tracking the cause of status updates.
        source:,
        # The status code if applicable.
        code: nil
      )
      end

      sig do
        override.returns(
          {
            changed_at: Time,
            message: String,
            reason: Straddle::StatusDetailsV1::Reason::TaggedSymbol,
            source: Straddle::StatusDetailsV1::Source::TaggedSymbol,
            code: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # A machine-readable identifier for the specific status, useful for programmatic
      # handling.
      module Reason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::StatusDetailsV1::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        CLOSED_BANK_ACCOUNT =
          T.let(
            :closed_bank_account,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        INVALID_BANK_ACCOUNT =
          T.let(
            :invalid_bank_account,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        INVALID_ROUTING =
          T.let(
            :invalid_routing,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        DISPUTED =
          T.let(:disputed, Straddle::StatusDetailsV1::Reason::TaggedSymbol)
        PAYMENT_STOPPED =
          T.let(
            :payment_stopped,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        OWNER_DECEASED =
          T.let(
            :owner_deceased,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        FROZEN_BANK_ACCOUNT =
          T.let(
            :frozen_bank_account,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        RISK_REVIEW =
          T.let(:risk_review, Straddle::StatusDetailsV1::Reason::TaggedSymbol)
        FRAUDULENT =
          T.let(:fraudulent, Straddle::StatusDetailsV1::Reason::TaggedSymbol)
        DUPLICATE_ENTRY =
          T.let(
            :duplicate_entry,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        INVALID_PAYKEY =
          T.let(
            :invalid_paykey,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        PAYMENT_BLOCKED =
          T.let(
            :payment_blocked,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        AMOUNT_TOO_LARGE =
          T.let(
            :amount_too_large,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        TOO_MANY_ATTEMPTS =
          T.let(
            :too_many_attempts,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        INTERNAL_SYSTEM_ERROR =
          T.let(
            :internal_system_error,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        USER_REQUEST =
          T.let(:user_request, Straddle::StatusDetailsV1::Reason::TaggedSymbol)
        OK = T.let(:ok, Straddle::StatusDetailsV1::Reason::TaggedSymbol)
        OTHER_NETWORK_RETURN =
          T.let(
            :other_network_return,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )
        PAYOUT_REFUSED =
          T.let(
            :payout_refused,
            Straddle::StatusDetailsV1::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::StatusDetailsV1::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
      # This helps in tracking the cause of status updates.
      module Source
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::StatusDetailsV1::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(:watchtower, Straddle::StatusDetailsV1::Source::TaggedSymbol)
        BANK_DECLINE =
          T.let(:bank_decline, Straddle::StatusDetailsV1::Source::TaggedSymbol)
        CUSTOMER_DISPUTE =
          T.let(
            :customer_dispute,
            Straddle::StatusDetailsV1::Source::TaggedSymbol
          )
        USER_ACTION =
          T.let(:user_action, Straddle::StatusDetailsV1::Source::TaggedSymbol)
        SYSTEM = T.let(:system, Straddle::StatusDetailsV1::Source::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::StatusDetailsV1::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
