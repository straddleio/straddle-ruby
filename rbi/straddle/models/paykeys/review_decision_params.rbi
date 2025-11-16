# typed: strong

module Straddle
  module Models
    module Paykeys
      class ReviewDecisionParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::ReviewDecisionParams,
              Straddle::Internal::AnyHash
            )
          end

        sig do
          returns(Straddle::Paykeys::ReviewDecisionParams::Status::OrSymbol)
        end
        attr_accessor :status

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
            status: Straddle::Paykeys::ReviewDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          status:,
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
              status: Straddle::Paykeys::ReviewDecisionParams::Status::OrSymbol,
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

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Paykeys::ReviewDecisionParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Straddle::Paykeys::ReviewDecisionParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Paykeys::ReviewDecisionParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Paykeys::ReviewDecisionParams::Status::TaggedSymbol
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
