# typed: strong

module Straddle
  module Models
    module Bridge
      class LinkBankAccountParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Bridge::LinkBankAccountParams,
              Straddle::Internal::AnyHash
            )
          end

        # The bank account number.
        sig { returns(String) }
        attr_accessor :account_number

        sig do
          returns(
            Straddle::Bridge::LinkBankAccountParams::AccountType::OrSymbol
          )
        end
        attr_accessor :account_type

        # Unique identifier of the related customer object.
        sig { returns(String) }
        attr_accessor :customer_id

        # The routing number of the bank account.
        sig { returns(String) }
        attr_accessor :routing_number

        sig do
          returns(T.nilable(Straddle::Bridge::LinkBankAccountParams::Config))
        end
        attr_reader :config

        sig do
          params(
            config: Straddle::Bridge::LinkBankAccountParams::Config::OrHash
          ).void
        end
        attr_writer :config

        # Unique identifier for the paykey in your database, used for cross-referencing
        # between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the paykey in a structured format.
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
            account_number: String,
            account_type:
              Straddle::Bridge::LinkBankAccountParams::AccountType::OrSymbol,
            customer_id: String,
            routing_number: String,
            config: Straddle::Bridge::LinkBankAccountParams::Config::OrHash,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The bank account number.
          account_number:,
          account_type:,
          # Unique identifier of the related customer object.
          customer_id:,
          # The routing number of the bank account.
          routing_number:,
          config: nil,
          # Unique identifier for the paykey in your database, used for cross-referencing
          # between Straddle and your systems.
          external_id: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the paykey in a structured format.
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
              account_number: String,
              account_type:
                Straddle::Bridge::LinkBankAccountParams::AccountType::OrSymbol,
              customer_id: String,
              routing_number: String,
              config: Straddle::Bridge::LinkBankAccountParams::Config,
              external_id: T.nilable(String),
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

        module AccountType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Bridge::LinkBankAccountParams::AccountType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHECKING =
            T.let(
              :checking,
              Straddle::Bridge::LinkBankAccountParams::AccountType::TaggedSymbol
            )
          SAVINGS =
            T.let(
              :savings,
              Straddle::Bridge::LinkBankAccountParams::AccountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Bridge::LinkBankAccountParams::AccountType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Bridge::LinkBankAccountParams::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::OrSymbol
              )
            )
          end
          attr_reader :processing_method

          sig do
            params(
              processing_method:
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::OrSymbol
            ).void
          end
          attr_writer :processing_method

          sig do
            returns(
              T.nilable(
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::OrSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              processing_method:
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::OrSymbol,
              sandbox_outcome:
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(processing_method: nil, sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                processing_method:
                  Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::OrSymbol,
                sandbox_outcome:
                  Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::OrSymbol
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
                  Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INLINE =
              T.let(
                :inline,
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::TaggedSymbol
              )
            BACKGROUND =
              T.let(
                :background,
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::TaggedSymbol
              )
            SKIP =
              T.let(
                :skip,
                Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Bridge::LinkBankAccountParams::Config::ProcessingMethod::TaggedSymbol
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
                  Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Bridge::LinkBankAccountParams::Config::SandboxOutcome::TaggedSymbol
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
