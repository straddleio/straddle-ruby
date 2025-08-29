# typed: strong

module Straddle
  module Models
    module Embed
      class AccountSimulateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::AccountSimulateParams,
              Straddle::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Straddle::Embed::AccountSimulateParams::FinalStatus::OrSymbol
            )
          )
        end
        attr_reader :final_status

        sig do
          params(
            final_status:
              Straddle::Embed::AccountSimulateParams::FinalStatus::OrSymbol
          ).void
        end
        attr_writer :final_status

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
            final_status:
              Straddle::Embed::AccountSimulateParams::FinalStatus::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          final_status: nil,
          correlation_id: nil,
          idempotency_key: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              final_status:
                Straddle::Embed::AccountSimulateParams::FinalStatus::OrSymbol,
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        module FinalStatus
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountSimulateParams::FinalStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::Embed::AccountSimulateParams::FinalStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::Embed::AccountSimulateParams::FinalStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::AccountSimulateParams::FinalStatus::TaggedSymbol
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
