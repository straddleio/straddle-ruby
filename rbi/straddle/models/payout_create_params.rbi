# typed: strong

module Straddle
  module Models
    class PayoutCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PayoutCreateParams, Straddle::Internal::AnyHash)
        end

      # The amount of the payout in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # The currency of the payout. Only USD is supported.
      sig { returns(String) }
      attr_accessor :currency

      # An arbitrary description for the payout.
      sig { returns(String) }
      attr_accessor :description

      # Information about the device used when the customer authorized the payout.
      sig { returns(Straddle::DeviceInfoV1) }
      attr_reader :device

      sig { params(device: Straddle::DeviceInfoV1::OrHash).void }
      attr_writer :device

      # Unique identifier for the payout in your database. This value must be unique
      # across all payouts.
      sig { returns(String) }
      attr_accessor :external_id

      # Value of the `paykey` used for the payout.
      sig { returns(String) }
      attr_accessor :paykey

      # The desired date on which the payout should be occur. For payouts, this means
      # the date you want the funds to be sent from your bank account.
      sig { returns(Date) }
      attr_accessor :payment_date

      sig { returns(T.nilable(Straddle::PayoutCreateParams::Config)) }
      attr_reader :config

      sig { params(config: Straddle::PayoutCreateParams::Config::OrHash).void }
      attr_writer :config

      # Up to 20 additional user-defined key-value pairs. Useful for storing additional
      # information about the payout in a structured format.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          amount: Integer,
          currency: String,
          description: String,
          device: Straddle::DeviceInfoV1::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          config: Straddle::PayoutCreateParams::Config::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of the payout in cents.
        amount:,
        # The currency of the payout. Only USD is supported.
        currency:,
        # An arbitrary description for the payout.
        description:,
        # Information about the device used when the customer authorized the payout.
        device:,
        # Unique identifier for the payout in your database. This value must be unique
        # across all payouts.
        external_id:,
        # Value of the `paykey` used for the payout.
        paykey:,
        # The desired date on which the payout should be occur. For payouts, this means
        # the date you want the funds to be sent from your bank account.
        payment_date:,
        config: nil,
        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the payout in a structured format.
        metadata: nil,
        correlation_id: nil,
        idempotency_key: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            currency: String,
            description: String,
            device: Straddle::DeviceInfoV1,
            external_id: String,
            paykey: String,
            payment_date: Date,
            config: Straddle::PayoutCreateParams::Config,
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Config < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::PayoutCreateParams::Config,
              Straddle::Internal::AnyHash
            )
          end

        # Payment will simulate processing if not Standard.
        sig do
          returns(
            T.nilable(
              Straddle::PayoutCreateParams::Config::SandboxOutcome::OrSymbol
            )
          )
        end
        attr_reader :sandbox_outcome

        sig do
          params(
            sandbox_outcome:
              Straddle::PayoutCreateParams::Config::SandboxOutcome::OrSymbol
          ).void
        end
        attr_writer :sandbox_outcome

        sig do
          params(
            sandbox_outcome:
              Straddle::PayoutCreateParams::Config::SandboxOutcome::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Payment will simulate processing if not Standard.
          sandbox_outcome: nil
        )
        end

        sig do
          override.returns(
            {
              sandbox_outcome:
                Straddle::PayoutCreateParams::Config::SandboxOutcome::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Payment will simulate processing if not Standard.
        module SandboxOutcome
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::PayoutCreateParams::Config::SandboxOutcome
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          ON_HOLD_DAILY_LIMIT =
            T.let(
              :on_hold_daily_limit,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          CANCELLED_FOR_FRAUD_RISK =
            T.let(
              :cancelled_for_fraud_risk,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          CANCELLED_FOR_BALANCE_CHECK =
            T.let(
              :cancelled_for_balance_check,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_INSUFFICIENT_FUNDS =
            T.let(
              :failed_insufficient_funds,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_INSUFFICIENT_FUNDS =
            T.let(
              :reversed_insufficient_funds,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_CUSTOMER_DISPUTE =
            T.let(
              :failed_customer_dispute,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_CUSTOMER_DISPUTE =
            T.let(
              :reversed_customer_dispute,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_CLOSED_BANK_ACCOUNT =
            T.let(
              :failed_closed_bank_account,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_CLOSED_BANK_ACCOUNT =
            T.let(
              :reversed_closed_bank_account,
              Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PayoutCreateParams::Config::SandboxOutcome::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
