# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Charges#create
    class ChargeCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount of the charge in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute config
      #
      #   @return [Straddle::Models::ChargeCreateParams::Config]
      required :config, -> { Straddle::ChargeCreateParams::Config }

      # @!attribute consent_type
      #   The channel or mechanism through which the payment was authorized. Use
      #   `internet` for payments made online or through a mobile app and `signed` for
      #   signed agreements where there is a consent form or contract. Use `signed` for
      #   PDF signatures.
      #
      #   @return [Symbol, Straddle::Models::ChargeCreateParams::ConsentType]
      required :consent_type, enum: -> { Straddle::ChargeCreateParams::ConsentType }

      # @!attribute currency
      #   The currency of the charge. Only USD is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   An arbitrary description for the charge.
      #
      #   @return [String]
      required :description, String

      # @!attribute device
      #
      #   @return [Straddle::Models::DeviceInfoV1]
      required :device, -> { Straddle::DeviceInfoV1 }

      # @!attribute external_id
      #   Unique identifier for the charge in your database. This value must be unique
      #   across all charges.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute paykey
      #   Value of the `paykey` used for the charge.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   The desired date on which the payment should be occur. For charges, this means
      #   the date you want the customer to be debited on.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute metadata
      #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
      #   information about the charge in a structured format.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute correlation_id
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(amount:, config:, consent_type:, currency:, description:, device:, external_id:, paykey:, payment_date:, metadata: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::ChargeCreateParams} for more details.
      #
      #   @param amount [Integer] The amount of the charge in cents.
      #
      #   @param config [Straddle::Models::ChargeCreateParams::Config]
      #
      #   @param consent_type [Symbol, Straddle::Models::ChargeCreateParams::ConsentType] The channel or mechanism through which the payment was authorized. Use `internet
      #
      #   @param currency [String] The currency of the charge. Only USD is supported.
      #
      #   @param description [String] An arbitrary description for the charge.
      #
      #   @param device [Straddle::Models::DeviceInfoV1]
      #
      #   @param external_id [String] Unique identifier for the charge in your database. This value must be unique acr
      #
      #   @param paykey [String] Value of the `paykey` used for the charge.
      #
      #   @param payment_date [Date] The desired date on which the payment should be occur. For charges, this means t
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
      #
      #   @param correlation_id [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      class Config < Straddle::Internal::Type::BaseModel
        # @!attribute balance_check
        #   Defines whether to check the customer's balance before processing the charge.
        #
        #   @return [Symbol, Straddle::Models::ChargeCreateParams::Config::BalanceCheck]
        required :balance_check, enum: -> { Straddle::ChargeCreateParams::Config::BalanceCheck }

        # @!attribute sandbox_outcome
        #   Payment will simulate processing if not Standard.
        #
        #   @return [Symbol, Straddle::Models::ChargeCreateParams::Config::SandboxOutcome, nil]
        optional :sandbox_outcome, enum: -> { Straddle::ChargeCreateParams::Config::SandboxOutcome }

        # @!method initialize(balance_check:, sandbox_outcome: nil)
        #   @param balance_check [Symbol, Straddle::Models::ChargeCreateParams::Config::BalanceCheck] Defines whether to check the customer's balance before processing the charge.
        #
        #   @param sandbox_outcome [Symbol, Straddle::Models::ChargeCreateParams::Config::SandboxOutcome] Payment will simulate processing if not Standard.

        # Defines whether to check the customer's balance before processing the charge.
        #
        # @see Straddle::Models::ChargeCreateParams::Config#balance_check
        module BalanceCheck
          extend Straddle::Internal::Type::Enum

          REQUIRED = :required
          ENABLED = :enabled
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Payment will simulate processing if not Standard.
        #
        # @see Straddle::Models::ChargeCreateParams::Config#sandbox_outcome
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

      # The channel or mechanism through which the payment was authorized. Use
      # `internet` for payments made online or through a mobile app and `signed` for
      # signed agreements where there is a consent form or contract. Use `signed` for
      # PDF signatures.
      module ConsentType
        extend Straddle::Internal::Type::Enum

        INTERNET = :internet
        SIGNED = :signed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
