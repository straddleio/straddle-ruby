# typed: strong

module Straddle
  module Models
    module Embed
      class LinkedBankAccountCreateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::LinkedBankAccountCreateParams,
              Straddle::Internal::AnyHash
            )
          end

        # The unique identifier of the Straddle account to associate this bank account
        # with.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        sig do
          returns(Straddle::Embed::LinkedBankAccountCreateParams::BankAccount)
        end
        attr_reader :bank_account

        sig do
          params(
            bank_account:
              Straddle::Embed::LinkedBankAccountCreateParams::BankAccount::OrHash
          ).void
        end
        attr_writer :bank_account

        # Optional description for the bank account.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the linked bank account in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        # The unique identifier of the Straddle Platform to associate this bank account
        # with.
        sig { returns(T.nilable(String)) }
        attr_accessor :platform_id

        # The purposes for the linked bank account.
        sig do
          returns(
            T.nilable(
              T::Array[
                Straddle::Embed::LinkedBankAccountCreateParams::Purpose::OrSymbol
              ]
            )
          )
        end
        attr_accessor :purposes

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

        sig do
          params(
            account_id: T.nilable(String),
            bank_account:
              Straddle::Embed::LinkedBankAccountCreateParams::BankAccount::OrHash,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            platform_id: T.nilable(String),
            purposes:
              T.nilable(
                T::Array[
                  Straddle::Embed::LinkedBankAccountCreateParams::Purpose::OrSymbol
                ]
              ),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the Straddle account to associate this bank account
          # with.
          account_id:,
          bank_account:,
          # Optional description for the bank account.
          description: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the linked bank account in a structured format.
          metadata: nil,
          # The unique identifier of the Straddle Platform to associate this bank account
          # with.
          platform_id: nil,
          # The purposes for the linked bank account.
          purposes: nil,
          correlation_id: nil,
          idempotency_key: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_id: T.nilable(String),
              bank_account:
                Straddle::Embed::LinkedBankAccountCreateParams::BankAccount,
              description: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              platform_id: T.nilable(String),
              purposes:
                T.nilable(
                  T::Array[
                    Straddle::Embed::LinkedBankAccountCreateParams::Purpose::OrSymbol
                  ]
                ),
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        class BankAccount < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::LinkedBankAccountCreateParams::BankAccount,
                Straddle::Internal::AnyHash
              )
            end

          # The name of the account holder as it appears on the bank account. Typically,
          # this is the legal name of the business associated with the account.
          sig { returns(String) }
          attr_accessor :account_holder

          # The bank account number.
          sig { returns(String) }
          attr_accessor :account_number

          # The routing number of the bank account.
          sig { returns(String) }
          attr_accessor :routing_number

          sig do
            params(
              account_holder: String,
              account_number: String,
              routing_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the account holder as it appears on the bank account. Typically,
            # this is the legal name of the business associated with the account.
            account_holder:,
            # The bank account number.
            account_number:,
            # The routing number of the bank account.
            routing_number:
          )
          end

          sig do
            override.returns(
              {
                account_holder: String,
                account_number: String,
                routing_number: String
              }
            )
          end
          def to_hash
          end
        end

        module Purpose
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Embed::LinkedBankAccountCreateParams::Purpose
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGES =
            T.let(
              :charges,
              Straddle::Embed::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
            )
          PAYOUTS =
            T.let(
              :payouts,
              Straddle::Embed::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
            )
          BILLING =
            T.let(
              :billing,
              Straddle::Embed::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
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
