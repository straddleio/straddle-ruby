# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Charges#hold
    class ChargeHoldParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute reason
      #   Details about why the charge status was updated.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

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

      # @!method initialize(reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param reason [String, nil] Details about why the charge status was updated.
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
