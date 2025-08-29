# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::LinkedBankAccounts#cancel
      class LinkedBankAccountCancelParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

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

        # @!method initialize(correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #   @param correlation_id [String]
        #   @param idempotency_key [String]
        #   @param request_id [String]
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
