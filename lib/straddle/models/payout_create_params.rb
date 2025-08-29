# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#create
    class PayoutCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount of the payout in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute currency
      #   The currency of the payout. Only USD is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   An arbitrary description for the payout.
      #
      #   @return [String]
      required :description, String

      # @!attribute device
      #   Information about the device used when the customer authorized the payout.
      #
      #   @return [Straddle::Models::DeviceInfoV1]
      required :device, -> { Straddle::DeviceInfoV1 }

      # @!attribute external_id
      #   Unique identifier for the payout in your database. This value must be unique
      #   across all payouts.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute paykey
      #   Value of the `paykey` used for the payout.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   The desired date on which the payout should be occur. For payouts, this means
      #   the date you want the funds to be sent from your bank account.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute config
      #
      #   @return [Straddle::Models::PayoutCreateParams::Config, nil]
      optional :config, -> { Straddle::PayoutCreateParams::Config }

      # @!attribute metadata
      #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
      #   information about the payout in a structured format.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute correlation_id
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(amount:, currency:, description:, device:, external_id:, paykey:, payment_date:, config: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutCreateParams} for more details.
      #
      #   @param amount [Integer] The amount of the payout in cents.
      #
      #   @param currency [String] The currency of the payout. Only USD is supported.
      #
      #   @param description [String] An arbitrary description for the payout.
      #
      #   @param device [Straddle::Models::DeviceInfoV1] Information about the device used when the customer authorized the payout.
      #
      #   @param external_id [String] Unique identifier for the payout in your database. This value must be unique acr
      #
      #   @param paykey [String] Value of the `paykey` used for the payout.
      #
      #   @param payment_date [Date] The desired date on which the payout should be occur. For payouts, this means th
      #
      #   @param config [Straddle::Models::PayoutCreateParams::Config]
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
      #
      #   @param correlation_id [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      class Config < Straddle::Internal::Type::BaseModel
        # @!attribute sandbox_outcome
        #   Payment will simulate processing if not Standard.
        #
        #   @return [Symbol, Straddle::Models::PayoutCreateParams::Config::SandboxOutcome, nil]
        optional :sandbox_outcome, enum: -> { Straddle::PayoutCreateParams::Config::SandboxOutcome }

        # @!method initialize(sandbox_outcome: nil)
        #   @param sandbox_outcome [Symbol, Straddle::Models::PayoutCreateParams::Config::SandboxOutcome] Payment will simulate processing if not Standard.

        # Payment will simulate processing if not Standard.
        #
        # @see Straddle::Models::PayoutCreateParams::Config#sandbox_outcome
        module SandboxOutcome
          extend Straddle::Internal::Type::Enum

          STANDARD = :standard
          PAID = :paid
          ON_HOLD_DAILY_LIMIT = :on_hold_daily_limit
          CANCELLED_FOR_FRAUD_RISK = :cancelled_for_fraud_risk
          CANCELLED_FOR_BALANCE_CHECK = :cancelled_for_balance_check
          FAILED_INSUFFICIENT_FUNDS = :failed_insufficient_funds
          REVERSED_INSUFFICIENT_FUNDS = :reversed_insufficient_funds
          FAILED_CUSTOMER_DISPUTE = :failed_customer_dispute
          REVERSED_CUSTOMER_DISPUTE = :reversed_customer_dispute
          FAILED_CLOSED_BANK_ACCOUNT = :failed_closed_bank_account
          REVERSED_CLOSED_BANK_ACCOUNT = :reversed_closed_bank_account

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
