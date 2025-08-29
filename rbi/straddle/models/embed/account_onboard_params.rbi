# typed: strong

module Straddle
  module Models
    module Embed
      class AccountOnboardParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::AccountOnboardParams,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Embed::TermsOfServiceV1) }
        attr_reader :terms_of_service

        sig do
          params(
            terms_of_service: Straddle::Embed::TermsOfServiceV1::OrHash
          ).void
        end
        attr_writer :terms_of_service

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
            terms_of_service: Straddle::Embed::TermsOfServiceV1::OrHash,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          terms_of_service:,
          correlation_id: nil,
          idempotency_key: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              terms_of_service: Straddle::Embed::TermsOfServiceV1,
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
