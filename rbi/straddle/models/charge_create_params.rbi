# typed: strong

module Straddle
  module Models
    class ChargeCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::ChargeCreateParams, Straddle::Internal::AnyHash)
        end

      # The amount of the charge in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Straddle::ChargeCreateParams::Config) }
      attr_reader :config

      sig { params(config: Straddle::ChargeCreateParams::Config::OrHash).void }
      attr_writer :config

      # The channel or mechanism through which the payment was authorized. Use
      # `internet` for payments made online or through a mobile app and `signed` for
      # signed agreements where there is a consent form or contract. Use `signed` for
      # PDF signatures.
      sig { returns(Straddle::ChargeCreateParams::ConsentType::OrSymbol) }
      attr_accessor :consent_type

      # The currency of the charge. Only USD is supported.
      sig { returns(String) }
      attr_accessor :currency

      # An arbitrary description for the charge.
      sig { returns(String) }
      attr_accessor :description

      sig { returns(Straddle::DeviceInfoV1) }
      attr_reader :device

      sig { params(device: Straddle::DeviceInfoV1::OrHash).void }
      attr_writer :device

      # Unique identifier for the charge in your database. This value must be unique
      # across all charges.
      sig { returns(String) }
      attr_accessor :external_id

      # Value of the `paykey` used for the charge.
      sig { returns(String) }
      attr_accessor :paykey

      # The desired date on which the payment should be occur. For charges, this means
      # the date you want the customer to be debited on.
      sig { returns(Date) }
      attr_accessor :payment_date

      # Up to 20 additional user-defined key-value pairs. Useful for storing additional
      # information about the charge in a structured format.
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
          config: Straddle::ChargeCreateParams::Config::OrHash,
          consent_type: Straddle::ChargeCreateParams::ConsentType::OrSymbol,
          currency: String,
          description: String,
          device: Straddle::DeviceInfoV1::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of the charge in cents.
        amount:,
        config:,
        # The channel or mechanism through which the payment was authorized. Use
        # `internet` for payments made online or through a mobile app and `signed` for
        # signed agreements where there is a consent form or contract. Use `signed` for
        # PDF signatures.
        consent_type:,
        # The currency of the charge. Only USD is supported.
        currency:,
        # An arbitrary description for the charge.
        description:,
        device:,
        # Unique identifier for the charge in your database. This value must be unique
        # across all charges.
        external_id:,
        # Value of the `paykey` used for the charge.
        paykey:,
        # The desired date on which the payment should be occur. For charges, this means
        # the date you want the customer to be debited on.
        payment_date:,
        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the charge in a structured format.
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
            config: Straddle::ChargeCreateParams::Config,
            consent_type: Straddle::ChargeCreateParams::ConsentType::OrSymbol,
            currency: String,
            description: String,
            device: Straddle::DeviceInfoV1,
            external_id: String,
            paykey: String,
            payment_date: Date,
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
              Straddle::ChargeCreateParams::Config,
              Straddle::Internal::AnyHash
            )
          end

        # Defines whether to check the customer's balance before processing the charge.
        sig do
          returns(Straddle::ChargeCreateParams::Config::BalanceCheck::OrSymbol)
        end
        attr_accessor :balance_check

        # Payment will simulate processing if not Standard.
        sig do
          returns(
            T.nilable(
              Straddle::ChargeCreateParams::Config::SandboxOutcome::OrSymbol
            )
          )
        end
        attr_reader :sandbox_outcome

        sig do
          params(
            sandbox_outcome:
              Straddle::ChargeCreateParams::Config::SandboxOutcome::OrSymbol
          ).void
        end
        attr_writer :sandbox_outcome

        sig do
          params(
            balance_check:
              Straddle::ChargeCreateParams::Config::BalanceCheck::OrSymbol,
            sandbox_outcome:
              Straddle::ChargeCreateParams::Config::SandboxOutcome::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines whether to check the customer's balance before processing the charge.
          balance_check:,
          # Payment will simulate processing if not Standard.
          sandbox_outcome: nil
        )
        end

        sig do
          override.returns(
            {
              balance_check:
                Straddle::ChargeCreateParams::Config::BalanceCheck::OrSymbol,
              sandbox_outcome:
                Straddle::ChargeCreateParams::Config::SandboxOutcome::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Defines whether to check the customer's balance before processing the charge.
        module BalanceCheck
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::ChargeCreateParams::Config::BalanceCheck)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUIRED =
            T.let(
              :required,
              Straddle::ChargeCreateParams::Config::BalanceCheck::TaggedSymbol
            )
          ENABLED =
            T.let(
              :enabled,
              Straddle::ChargeCreateParams::Config::BalanceCheck::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Straddle::ChargeCreateParams::Config::BalanceCheck::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::ChargeCreateParams::Config::BalanceCheck::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Payment will simulate processing if not Standard.
        module SandboxOutcome
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::ChargeCreateParams::Config::SandboxOutcome
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          ON_HOLD_DAILY_LIMIT =
            T.let(
              :on_hold_daily_limit,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          CANCELLED_FOR_FRAUD_RISK =
            T.let(
              :cancelled_for_fraud_risk,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          CANCELLED_FOR_BALANCE_CHECK =
            T.let(
              :cancelled_for_balance_check,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_INSUFFICIENT_FUNDS =
            T.let(
              :failed_insufficient_funds,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_INSUFFICIENT_FUNDS =
            T.let(
              :reversed_insufficient_funds,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_CUSTOMER_DISPUTE =
            T.let(
              :failed_customer_dispute,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_CUSTOMER_DISPUTE =
            T.let(
              :reversed_customer_dispute,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          FAILED_CLOSED_BANK_ACCOUNT =
            T.let(
              :failed_closed_bank_account,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVERSED_CLOSED_BANK_ACCOUNT =
            T.let(
              :reversed_closed_bank_account,
              Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::ChargeCreateParams::Config::SandboxOutcome::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The channel or mechanism through which the payment was authorized. Use
      # `internet` for payments made online or through a mobile app and `signed` for
      # signed agreements where there is a consent form or contract. Use `signed` for
      # PDF signatures.
      module ConsentType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::ChargeCreateParams::ConsentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERNET =
          T.let(
            :internet,
            Straddle::ChargeCreateParams::ConsentType::TaggedSymbol
          )
        SIGNED =
          T.let(
            :signed,
            Straddle::ChargeCreateParams::ConsentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::ChargeCreateParams::ConsentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
