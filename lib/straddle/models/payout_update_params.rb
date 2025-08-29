# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#update
    class PayoutUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount of the payout in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute description
      #   An arbitrary description for the payout.
      #
      #   @return [String]
      required :description, String

      # @!attribute payment_date
      #   The desired date on which the payment should be occur. For payouts, this means
      #   the date you want the funds to be sent from your bank account.
      #
      #   @return [Date]
      required :payment_date, Date

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

      # @!method initialize(amount:, description:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutUpdateParams} for more details.
      #
      #   @param amount [Integer] The amount of the payout in cents.
      #
      #   @param description [String] An arbitrary description for the payout.
      #
      #   @param payment_date [Date] The desired date on which the payment should be occur. For payouts, this means t
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
    end
  end
end
