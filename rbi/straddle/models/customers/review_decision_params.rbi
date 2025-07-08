# typed: strong

module Straddle
  module Models
    module Customers
      class ReviewDecisionParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::ReviewDecisionParams,
              Straddle::Internal::AnyHash
            )
          end

        # The final status of the customer review.
        sig do
          returns(Straddle::Customers::ReviewDecisionParams::Status::OrSymbol)
        end
        attr_accessor :status

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
            status: Straddle::Customers::ReviewDecisionParams::Status::OrSymbol,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The final status of the customer review.
          status:,
          correlation_id: nil,
          request_id: nil,
          straddle_account_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              status:
                Straddle::Customers::ReviewDecisionParams::Status::OrSymbol,
              correlation_id: String,
              request_id: String,
              straddle_account_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The final status of the customer review.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Customers::ReviewDecisionParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFIED =
            T.let(
              :verified,
              Straddle::Customers::ReviewDecisionParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Customers::ReviewDecisionParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Customers::ReviewDecisionParams::Status::TaggedSymbol
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
