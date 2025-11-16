# typed: strong

module Straddle
  module Models
    class BridgeInitializeParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::BridgeInitializeParams, Straddle::Internal::AnyHash)
        end

      # The Straddle generated unique identifier of the `customer` to create a bridge
      # token for.
      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Straddle::BridgeInitializeParams::Config)) }
      attr_reader :config

      sig do
        params(config: Straddle::BridgeInitializeParams::Config::OrHash).void
      end
      attr_writer :config

      # Unique identifier for the paykey in your database, used for cross-referencing
      # between Straddle and your systems.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

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
          customer_id: String,
          config: Straddle::BridgeInitializeParams::Config::OrHash,
          external_id: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The Straddle generated unique identifier of the `customer` to create a bridge
        # token for.
        customer_id:,
        config: nil,
        # Unique identifier for the paykey in your database, used for cross-referencing
        # between Straddle and your systems.
        external_id: nil,
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
            customer_id: String,
            config: Straddle::BridgeInitializeParams::Config,
            external_id: T.nilable(String),
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
              Straddle::BridgeInitializeParams::Config,
              Straddle::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::OrSymbol
            )
          )
        end
        attr_reader :processing_method

        sig do
          params(
            processing_method:
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::OrSymbol
          ).void
        end
        attr_writer :processing_method

        sig do
          returns(
            T.nilable(
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::OrSymbol
            )
          )
        end
        attr_reader :sandbox_outcome

        sig do
          params(
            sandbox_outcome:
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::OrSymbol
          ).void
        end
        attr_writer :sandbox_outcome

        sig do
          params(
            processing_method:
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::OrSymbol,
            sandbox_outcome:
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(processing_method: nil, sandbox_outcome: nil)
        end

        sig do
          override.returns(
            {
              processing_method:
                Straddle::BridgeInitializeParams::Config::ProcessingMethod::OrSymbol,
              sandbox_outcome:
                Straddle::BridgeInitializeParams::Config::SandboxOutcome::OrSymbol
            }
          )
        end
        def to_hash
        end

        module ProcessingMethod
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::BridgeInitializeParams::Config::ProcessingMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INLINE =
            T.let(
              :inline,
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::TaggedSymbol
            )
          BACKGROUND =
            T.let(
              :background,
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::TaggedSymbol
            )
          SKIP =
            T.let(
              :skip,
              Straddle::BridgeInitializeParams::Config::ProcessingMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::BridgeInitializeParams::Config::ProcessingMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SandboxOutcome
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::BridgeInitializeParams::Config::SandboxOutcome
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::BridgeInitializeParams::Config::SandboxOutcome::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::BridgeInitializeParams::Config::SandboxOutcome::TaggedSymbol
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
