# typed: strong

module Straddle
  module Models
    module Customers
      class IdentityVerificationBreakdownV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::IdentityVerificationBreakdownV1,
              Straddle::Internal::AnyHash
            )
          end

        # List of specific result codes from the fraud and risk screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

        sig do
          returns(
            T.nilable(
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )
          )
        end
        attr_reader :correlation

        sig do
          params(
            correlation:
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::OrSymbol
          ).void
        end
        attr_writer :correlation

        # Represents the strength of the correlation between provided and known
        # information. A higher score indicates a stronger correlation.
        sig { returns(T.nilable(Float)) }
        attr_accessor :correlation_score

        sig do
          returns(
            T.nilable(
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol
            )
          )
        end
        attr_reader :decision

        sig do
          params(
            decision:
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::OrSymbol
          ).void
        end
        attr_writer :decision

        # Predicts the inherent risk associated with the customer for a given module. A
        # higher score indicates a greater likelihood of fraud.
        sig { returns(T.nilable(Float)) }
        attr_accessor :risk_score

        sig do
          params(
            codes: T.nilable(T::Array[String]),
            correlation:
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::OrSymbol,
            correlation_score: T.nilable(Float),
            decision:
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::OrSymbol,
            risk_score: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # List of specific result codes from the fraud and risk screening.
          codes: nil,
          correlation: nil,
          # Represents the strength of the correlation between provided and known
          # information. A higher score indicates a stronger correlation.
          correlation_score: nil,
          decision: nil,
          # Predicts the inherent risk associated with the customer for a given module. A
          # higher score indicates a greater likelihood of fraud.
          risk_score: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T.nilable(T::Array[String]),
              correlation:
                Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol,
              correlation_score: T.nilable(Float),
              decision:
                Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol,
              risk_score: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        module Correlation
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Customers::IdentityVerificationBreakdownV1::Correlation
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOW_CONFIDENCE =
            T.let(
              :low_confidence,
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )
          POTENTIAL_MATCH =
            T.let(
              :potential_match,
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )
          LIKELY_MATCH =
            T.let(
              :likely_match,
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )
          HIGH_CONFIDENCE =
            T.let(
              :high_confidence,
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Customers::IdentityVerificationBreakdownV1::Correlation::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Decision
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Customers::IdentityVerificationBreakdownV1::Decision
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPT =
            T.let(
              :accept,
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol
            )
          REJECT =
            T.let(
              :reject,
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Customers::IdentityVerificationBreakdownV1::Decision::TaggedSymbol
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
