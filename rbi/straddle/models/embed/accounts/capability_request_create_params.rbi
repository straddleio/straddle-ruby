# typed: strong

module Straddle
  module Models
    module Embed
      module Accounts
        class CapabilityRequestCreateParams < Straddle::Internal::Type::BaseModel
          extend Straddle::Internal::Type::RequestParameters::Converter
          include Straddle::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams,
                Straddle::Internal::AnyHash
              )
            end

          # Allows the account to accept payments from businesses.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses
              )
            )
          end
          attr_reader :businesses

          sig do
            params(
              businesses:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses::OrHash
            ).void
          end
          attr_writer :businesses

          # The charges capability settings for the account.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges
              )
            )
          end
          attr_reader :charges

          sig do
            params(
              charges:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges::OrHash
            ).void
          end
          attr_writer :charges

          # Allows the account to accept payments from individuals.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals
              )
            )
          end
          attr_reader :individuals

          sig do
            params(
              individuals:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals::OrHash
            ).void
          end
          attr_writer :individuals

          # Allows the account to accept payments authorized via the internet or mobile
          # applications.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet
              )
            )
          end
          attr_reader :internet

          sig do
            params(
              internet:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet::OrHash
            ).void
          end
          attr_writer :internet

          # The payouts capability settings for the account.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts
              )
            )
          end
          attr_reader :payouts

          sig do
            params(
              payouts:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts::OrHash
            ).void
          end
          attr_writer :payouts

          # Allows the account to accept payments authorized by signed agreements or
          # contracts.
          sig do
            returns(
              T.nilable(
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement
              )
            )
          end
          attr_reader :signed_agreement

          sig do
            params(
              signed_agreement:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement::OrHash
            ).void
          end
          attr_writer :signed_agreement

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
              businesses:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses::OrHash,
              charges:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges::OrHash,
              individuals:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals::OrHash,
              internet:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet::OrHash,
              payouts:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts::OrHash,
              signed_agreement:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement::OrHash,
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Allows the account to accept payments from businesses.
            businesses: nil,
            # The charges capability settings for the account.
            charges: nil,
            # Allows the account to accept payments from individuals.
            individuals: nil,
            # Allows the account to accept payments authorized via the internet or mobile
            # applications.
            internet: nil,
            # The payouts capability settings for the account.
            payouts: nil,
            # Allows the account to accept payments authorized by signed agreements or
            # contracts.
            signed_agreement: nil,
            correlation_id: nil,
            idempotency_key: nil,
            request_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                businesses:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses,
                charges:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges,
                individuals:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals,
                internet:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet,
                payouts:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts,
                signed_agreement:
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement,
                correlation_id: String,
                idempotency_key: String,
                request_id: String,
                request_options: Straddle::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Businesses < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :enable

            # Allows the account to accept payments from businesses.
            sig { params(enable: T::Boolean).returns(T.attached_class) }
            def self.new(enable:)
            end

            sig { override.returns({ enable: T::Boolean }) }
            def to_hash
            end
          end

          class Charges < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges,
                  Straddle::Internal::AnyHash
                )
              end

            # The maximum dollar amount of charges in a calendar day.
            sig { returns(Float) }
            attr_accessor :daily_amount

            # Determines whether `charges` are enabled for the account.
            sig { returns(T::Boolean) }
            attr_accessor :enable

            # The maximum amount of a single charge.
            sig { returns(Float) }
            attr_accessor :max_amount

            # The maximum dollar amount of charges in a calendar month.
            sig { returns(Float) }
            attr_accessor :monthly_amount

            # The maximum number of charges in a calendar month.
            sig { returns(Integer) }
            attr_accessor :monthly_count

            # The charges capability settings for the account.
            sig do
              params(
                daily_amount: Float,
                enable: T::Boolean,
                max_amount: Float,
                monthly_amount: Float,
                monthly_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The maximum dollar amount of charges in a calendar day.
              daily_amount:,
              # Determines whether `charges` are enabled for the account.
              enable:,
              # The maximum amount of a single charge.
              max_amount:,
              # The maximum dollar amount of charges in a calendar month.
              monthly_amount:,
              # The maximum number of charges in a calendar month.
              monthly_count:
            )
            end

            sig do
              override.returns(
                {
                  daily_amount: Float,
                  enable: T::Boolean,
                  max_amount: Float,
                  monthly_amount: Float,
                  monthly_count: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Individuals < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :enable

            # Allows the account to accept payments from individuals.
            sig { params(enable: T::Boolean).returns(T.attached_class) }
            def self.new(enable:)
            end

            sig { override.returns({ enable: T::Boolean }) }
            def to_hash
            end
          end

          class Internet < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :enable

            # Allows the account to accept payments authorized via the internet or mobile
            # applications.
            sig { params(enable: T::Boolean).returns(T.attached_class) }
            def self.new(enable:)
            end

            sig { override.returns({ enable: T::Boolean }) }
            def to_hash
            end
          end

          class Payouts < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts,
                  Straddle::Internal::AnyHash
                )
              end

            # The maximum dollar amount of payouts in a day.
            sig { returns(Float) }
            attr_accessor :daily_amount

            # Determines whether `payouts` are enabled for the account.
            sig { returns(T::Boolean) }
            attr_accessor :enable

            # The maximum amount of a single payout.
            sig { returns(Float) }
            attr_accessor :max_amount

            # The maximum dollar amount of payouts in a month.
            sig { returns(Float) }
            attr_accessor :monthly_amount

            # The maximum number of payouts in a month.
            sig { returns(Integer) }
            attr_accessor :monthly_count

            # The payouts capability settings for the account.
            sig do
              params(
                daily_amount: Float,
                enable: T::Boolean,
                max_amount: Float,
                monthly_amount: Float,
                monthly_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The maximum dollar amount of payouts in a day.
              daily_amount:,
              # Determines whether `payouts` are enabled for the account.
              enable:,
              # The maximum amount of a single payout.
              max_amount:,
              # The maximum dollar amount of payouts in a month.
              monthly_amount:,
              # The maximum number of payouts in a month.
              monthly_count:
            )
            end

            sig do
              override.returns(
                {
                  daily_amount: Float,
                  enable: T::Boolean,
                  max_amount: Float,
                  monthly_amount: Float,
                  monthly_count: Integer
                }
              )
            end
            def to_hash
            end
          end

          class SignedAgreement < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(T::Boolean) }
            attr_accessor :enable

            # Allows the account to accept payments authorized by signed agreements or
            # contracts.
            sig { params(enable: T::Boolean).returns(T.attached_class) }
            def self.new(enable:)
            end

            sig { override.returns({ enable: T::Boolean }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
