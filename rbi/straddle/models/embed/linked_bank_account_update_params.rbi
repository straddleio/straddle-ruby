# typed: strong

module Straddle
  module Models
    module Embed
      class LinkedBankAccountUpdateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::LinkedBankAccountUpdateParams,
              Straddle::Internal::AnyHash
            )
          end

        sig do
          returns(Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount)
        end
        attr_reader :bank_account

        sig do
          params(
            bank_account:
              Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount::OrHash
          ).void
        end
        attr_writer :bank_account

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the linked bank account in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            bank_account:
              Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount::OrHash,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          bank_account:,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the linked bank account in a structured format.
          metadata: nil,
          correlation_id: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bank_account:
                Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount,
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              correlation_id: String,
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
                Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount,
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
      end
    end
  end
end
