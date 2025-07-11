# typed: strong

module Straddle
  module Models
    module Bridge
      class LinkPlaidParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Bridge::LinkPlaidParams,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier of the related customer object.
        sig { returns(String) }
        attr_accessor :customer_id

        # Plaid processor token generated by your application for use with the Straddle
        # API.
        sig { returns(String) }
        attr_accessor :plaid_token

        sig { returns(T.nilable(Straddle::Bridge::LinkPlaidParams::Config)) }
        attr_reader :config

        sig do
          params(config: Straddle::Bridge::LinkPlaidParams::Config::OrHash).void
        end
        attr_writer :config

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the paykey in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

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
            plaid_token: String,
            config: Straddle::Bridge::LinkPlaidParams::Config::OrHash,
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the related customer object.
          customer_id:,
          # Plaid processor token generated by your application for use with the Straddle
          # API.
          plaid_token:,
          config: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the paykey in a structured format.
          metadata: nil,
          correlation_id: nil,
          request_id: nil,
          straddle_account_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              plaid_token: String,
              config: Straddle::Bridge::LinkPlaidParams::Config,
              metadata: T.nilable(T::Hash[Symbol, String]),
              correlation_id: String,
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
                Straddle::Bridge::LinkPlaidParams::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::OrSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                sandbox_outcome:
                  Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::OrSymbol
              }
            )
          end
          def to_hash
          end

          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Bridge::LinkPlaidParams::Config::SandboxOutcome::TaggedSymbol
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
end
