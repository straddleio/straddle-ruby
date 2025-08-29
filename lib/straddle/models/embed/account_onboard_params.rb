# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Accounts#onboard
      class AccountOnboardParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute terms_of_service
        #
        #   @return [Straddle::Models::Embed::TermsOfServiceV1]
        required :terms_of_service, -> { Straddle::Embed::TermsOfServiceV1 }

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

        # @!method initialize(terms_of_service:, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #   @param terms_of_service [Straddle::Models::Embed::TermsOfServiceV1]
        #   @param correlation_id [String]
        #   @param idempotency_key [String]
        #   @param request_id [String]
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
