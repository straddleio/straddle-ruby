# typed: strong

module Straddle
  module Models
    module Embed
      class TermsOfServiceV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::TermsOfServiceV1,
              Straddle::Internal::AnyHash
            )
          end

        # The datetime of when the terms of service were accepted, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :accepted_date

        # The type or version of the agreement accepted. Use `embedded` unless your
        # platform was specifically enabled for `direct` agreements.
        sig do
          returns(Straddle::Embed::TermsOfServiceV1::AgreementType::OrSymbol)
        end
        attr_accessor :agreement_type

        # The URL where the full text of the accepted agreement can be found.
        sig { returns(T.nilable(String)) }
        attr_accessor :agreement_url

        # The IP address from which the terms of service were accepted.
        sig { returns(T.nilable(String)) }
        attr_accessor :accepted_ip

        # The user agent string of the browser or application used to accept the terms.
        sig { returns(T.nilable(String)) }
        attr_accessor :accepted_user_agent

        sig do
          params(
            accepted_date: Time,
            agreement_type:
              Straddle::Embed::TermsOfServiceV1::AgreementType::OrSymbol,
            agreement_url: T.nilable(String),
            accepted_ip: T.nilable(String),
            accepted_user_agent: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The datetime of when the terms of service were accepted, in ISO 8601 format.
          accepted_date:,
          # The type or version of the agreement accepted. Use `embedded` unless your
          # platform was specifically enabled for `direct` agreements.
          agreement_type:,
          # The URL where the full text of the accepted agreement can be found.
          agreement_url:,
          # The IP address from which the terms of service were accepted.
          accepted_ip: nil,
          # The user agent string of the browser or application used to accept the terms.
          accepted_user_agent: nil
        )
        end

        sig do
          override.returns(
            {
              accepted_date: Time,
              agreement_type:
                Straddle::Embed::TermsOfServiceV1::AgreementType::OrSymbol,
              agreement_url: T.nilable(String),
              accepted_ip: T.nilable(String),
              accepted_user_agent: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The type or version of the agreement accepted. Use `embedded` unless your
        # platform was specifically enabled for `direct` agreements.
        module AgreementType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::TermsOfServiceV1::AgreementType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMBEDDED =
            T.let(
              :embedded,
              Straddle::Embed::TermsOfServiceV1::AgreementType::TaggedSymbol
            )
          DIRECT =
            T.let(
              :direct,
              Straddle::Embed::TermsOfServiceV1::AgreementType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::TermsOfServiceV1::AgreementType::TaggedSymbol
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
