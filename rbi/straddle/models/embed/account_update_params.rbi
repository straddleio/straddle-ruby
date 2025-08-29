# typed: strong

module Straddle
  module Models
    module Embed
      class AccountUpdateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::AccountUpdateParams,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Embed::BusinessProfileV1) }
        attr_reader :business_profile

        sig do
          params(
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash
          ).void
        end
        attr_writer :business_profile

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
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          business_profile:,
          # Unique identifier for the account in your database, used for cross-referencing
          # between Straddle and your systems.
          external_id: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the account in a structured format.
          metadata: nil,
          correlation_id: nil,
          idempotency_key: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              business_profile: Straddle::Embed::BusinessProfileV1,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
