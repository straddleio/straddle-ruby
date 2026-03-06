# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Accounts#simulate
      class AccountSimulateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute final_status
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountSimulateParams::FinalStatus, nil]
        optional :final_status, enum: -> { Straddle::Embed::AccountSimulateParams::FinalStatus }

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

        # @!method initialize(account_id:, final_status: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #   @param account_id [String]
        #   @param final_status [Symbol, Straddle::Models::Embed::AccountSimulateParams::FinalStatus]
        #   @param correlation_id [String]
        #   @param idempotency_key [String]
        #   @param request_id [String]
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        module FinalStatus
          extend Straddle::Internal::Type::Enum

          ONBOARDING = :onboarding
          ACTIVE = :active

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
