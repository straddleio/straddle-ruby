# typed: strong

module Straddle
  module Models
    module Embed
      class AccountCreateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::AccountCreateParams,
              Straddle::Internal::AnyHash
            )
          end

        # The access level granted to the account. This is determined by your platform
        # configuration. Use `standard` unless instructed otherwise by Straddle.
        sig do
          returns(Straddle::Embed::AccountCreateParams::AccessLevel::OrSymbol)
        end
        attr_accessor :access_level

        # The type of account to be created. Currently, only `business` is supported.
        sig do
          returns(Straddle::Embed::AccountCreateParams::AccountType::OrSymbol)
        end
        attr_accessor :account_type

        sig { returns(Straddle::Embed::BusinessProfileV1) }
        attr_reader :business_profile

        sig do
          params(
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash
          ).void
        end
        attr_writer :business_profile

        # The unique identifier of the organization related to this account.
        sig { returns(String) }
        attr_accessor :organization_id

        # Unique identifier for the account in your database, used for cross-referencing
        # between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the account in a structured format.
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
            access_level:
              Straddle::Embed::AccountCreateParams::AccessLevel::OrSymbol,
            account_type:
              Straddle::Embed::AccountCreateParams::AccountType::OrSymbol,
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash,
            organization_id: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The access level granted to the account. This is determined by your platform
          # configuration. Use `standard` unless instructed otherwise by Straddle.
          access_level:,
          # The type of account to be created. Currently, only `business` is supported.
          account_type:,
          business_profile:,
          # The unique identifier of the organization related to this account.
          organization_id:,
          # Unique identifier for the account in your database, used for cross-referencing
          # between Straddle and your systems.
          external_id: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the account in a structured format.
          metadata: nil,
          correlation_id: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              access_level:
                Straddle::Embed::AccountCreateParams::AccessLevel::OrSymbol,
              account_type:
                Straddle::Embed::AccountCreateParams::AccountType::OrSymbol,
              business_profile: Straddle::Embed::BusinessProfileV1,
              organization_id: String,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The access level granted to the account. This is determined by your platform
        # configuration. Use `standard` unless instructed otherwise by Straddle.
        module AccessLevel
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountCreateParams::AccessLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Straddle::Embed::AccountCreateParams::AccessLevel::TaggedSymbol
            )
          MANAGED =
            T.let(
              :managed,
              Straddle::Embed::AccountCreateParams::AccessLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::AccountCreateParams::AccessLevel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of account to be created. Currently, only `business` is supported.
        module AccountType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountCreateParams::AccountType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              Straddle::Embed::AccountCreateParams::AccountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::AccountCreateParams::AccountType::TaggedSymbol
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
