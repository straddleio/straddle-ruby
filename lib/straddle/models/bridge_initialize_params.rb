# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Bridge#initialize_
    class BridgeInitializeParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   The Straddle generated unique identifier of the `customer` to create a bridge
      #   token for.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute config
      #
      #   @return [Straddle::Models::BridgeInitializeParams::Config, nil]
      optional :config, -> { Straddle::BridgeInitializeParams::Config }

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

      # @!method initialize(customer_id:, config: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::BridgeInitializeParams} for more details.
      #
      #   @param customer_id [String] The Straddle generated unique identifier of the `customer` to create a bridge to
      #
      #   @param config [Straddle::Models::BridgeInitializeParams::Config]
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
        #
        #   @return [Symbol, Straddle::Models::BridgeInitializeParams::Config::SandboxOutcome, nil]
        optional :sandbox_outcome, enum: -> { Straddle::BridgeInitializeParams::Config::SandboxOutcome }

        # @!method initialize(sandbox_outcome: nil)
        #   @param sandbox_outcome [Symbol, Straddle::Models::BridgeInitializeParams::Config::SandboxOutcome]

        # @see Straddle::Models::BridgeInitializeParams::Config#sandbox_outcome
        module SandboxOutcome
          extend Straddle::Internal::Type::Enum

          STANDARD = :standard
          ACTIVE = :active
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
