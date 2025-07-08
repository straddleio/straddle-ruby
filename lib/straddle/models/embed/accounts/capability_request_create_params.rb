# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      module Accounts
        # @see Straddle::Resources::Embed::Accounts::CapabilityRequests#create
        class CapabilityRequestCreateParams < Straddle::Internal::Type::BaseModel
          extend Straddle::Internal::Type::RequestParameters::Converter
          include Straddle::Internal::Type::RequestParameters

          # @!attribute businesses
          #   Allows the account to accept payments from businesses.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Businesses, nil]
          optional :businesses, -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses }

          # @!attribute charges
          #   The charges capability settings for the account.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Charges, nil]
          optional :charges, -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges }

          # @!attribute individuals
          #   Allows the account to accept payments from individuals.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Individuals, nil]
          optional :individuals, -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals }

          # @!attribute internet
          #   Allows the account to accept payments authorized via the internet or mobile
          #   applications.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Internet, nil]
          optional :internet, -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet }

          # @!attribute payouts
          #   The payouts capability settings for the account.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Payouts, nil]
          optional :payouts, -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts }

          # @!attribute signed_agreement
          #   Allows the account to accept payments authorized by signed agreements or
          #   contracts.
          #
          #   @return [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement, nil]
          optional :signed_agreement,
                   -> { Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement }

          # @!attribute correlation_id
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!attribute request_id
          #
          #   @return [String, nil]
          optional :request_id, String

          # @!method initialize(businesses: nil, charges: nil, individuals: nil, internet: nil, payouts: nil, signed_agreement: nil, correlation_id: nil, request_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams} for more
          #   details.
          #
          #   @param businesses [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Businesses] Allows the account to accept payments from businesses.
          #
          #   @param charges [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Charges] The charges capability settings for the account.
          #
          #   @param individuals [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Individuals] Allows the account to accept payments from individuals.
          #
          #   @param internet [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Internet] Allows the account to accept payments authorized via the internet or mobile appl
          #
          #   @param payouts [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Payouts] The payouts capability settings for the account.
          #
          #   @param signed_agreement [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement] Allows the account to accept payments authorized by signed agreements or contrac
          #
          #   @param correlation_id [String]
          #
          #   @param request_id [String]
          #
          #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

          class Businesses < Straddle::Internal::Type::BaseModel
            # @!attribute enable
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!method initialize(enable:)
            #   Allows the account to accept payments from businesses.
            #
            #   @param enable [Boolean]
          end

          class Charges < Straddle::Internal::Type::BaseModel
            # @!attribute daily_amount
            #   The maximum dollar amount of charges in a calendar day.
            #
            #   @return [Float]
            required :daily_amount, Float

            # @!attribute enable
            #   Determines whether `charges` are enabled for the account.
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!attribute max_amount
            #   The maximum amount of a single charge.
            #
            #   @return [Float]
            required :max_amount, Float

            # @!attribute monthly_amount
            #   The maximum dollar amount of charges in a calendar month.
            #
            #   @return [Float]
            required :monthly_amount, Float

            # @!attribute monthly_count
            #   The maximum number of charges in a calendar month.
            #
            #   @return [Integer]
            required :monthly_count, Integer

            # @!method initialize(daily_amount:, enable:, max_amount:, monthly_amount:, monthly_count:)
            #   The charges capability settings for the account.
            #
            #   @param daily_amount [Float] The maximum dollar amount of charges in a calendar day.
            #
            #   @param enable [Boolean] Determines whether `charges` are enabled for the account.
            #
            #   @param max_amount [Float] The maximum amount of a single charge.
            #
            #   @param monthly_amount [Float] The maximum dollar amount of charges in a calendar month.
            #
            #   @param monthly_count [Integer] The maximum number of charges in a calendar month.
          end

          class Individuals < Straddle::Internal::Type::BaseModel
            # @!attribute enable
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!method initialize(enable:)
            #   Allows the account to accept payments from individuals.
            #
            #   @param enable [Boolean]
          end

          class Internet < Straddle::Internal::Type::BaseModel
            # @!attribute enable
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!method initialize(enable:)
            #   Allows the account to accept payments authorized via the internet or mobile
            #   applications.
            #
            #   @param enable [Boolean]
          end

          class Payouts < Straddle::Internal::Type::BaseModel
            # @!attribute daily_amount
            #   The maximum dollar amount of payouts in a day.
            #
            #   @return [Float]
            required :daily_amount, Float

            # @!attribute enable
            #   Determines whether `payouts` are enabled for the account.
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!attribute max_amount
            #   The maximum amount of a single payout.
            #
            #   @return [Float]
            required :max_amount, Float

            # @!attribute monthly_amount
            #   The maximum dollar amount of payouts in a month.
            #
            #   @return [Float]
            required :monthly_amount, Float

            # @!attribute monthly_count
            #   The maximum number of payouts in a month.
            #
            #   @return [Integer]
            required :monthly_count, Integer

            # @!method initialize(daily_amount:, enable:, max_amount:, monthly_amount:, monthly_count:)
            #   The payouts capability settings for the account.
            #
            #   @param daily_amount [Float] The maximum dollar amount of payouts in a day.
            #
            #   @param enable [Boolean] Determines whether `payouts` are enabled for the account.
            #
            #   @param max_amount [Float] The maximum amount of a single payout.
            #
            #   @param monthly_amount [Float] The maximum dollar amount of payouts in a month.
            #
            #   @param monthly_count [Integer] The maximum number of payouts in a month.
          end

          class SignedAgreement < Straddle::Internal::Type::BaseModel
            # @!attribute enable
            #
            #   @return [Boolean]
            required :enable, Straddle::Internal::Type::Boolean

            # @!method initialize(enable:)
            #   Allows the account to accept payments authorized by signed agreements or
            #   contracts.
            #
            #   @param enable [Boolean]
          end
        end
      end
    end
  end
end
