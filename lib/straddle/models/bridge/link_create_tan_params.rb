# frozen_string_literal: true

module Straddle
  module Models
    module Bridge
      # @see Straddle::Resources::Bridge::Link#create_tan
      class LinkCreateTanParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute account_type
        #
        #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::AccountType]
        required :account_type, enum: -> { Straddle::Bridge::LinkCreateTanParams::AccountType }

        # @!attribute customer_id
        #   Unique identifier of the related customer object.
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute routing_number
        #   Bank routing number.
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute tan
        #   Tokenized account number.
        #
        #   @return [String]
        required :tan, String

        # @!attribute config
        #
        #   @return [Straddle::Models::Bridge::LinkCreateTanParams::Config, nil]
        optional :config, -> { Straddle::Bridge::LinkCreateTanParams::Config }

        # @!attribute external_id
        #   Unique identifier for the paykey in your database, used for cross-referencing
        #   between Straddle and your systems.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #   information about the paykey in a structured format.
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

        # @!method initialize(account_type:, customer_id:, routing_number:, tan:, config: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Bridge::LinkCreateTanParams} for more details.
        #
        #   @param account_type [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::AccountType]
        #
        #   @param customer_id [String] Unique identifier of the related customer object.
        #
        #   @param routing_number [String] Bank routing number.
        #
        #   @param tan [String] Tokenized account number.
        #
        #   @param config [Straddle::Models::Bridge::LinkCreateTanParams::Config]
        #
        #   @param external_id [String, nil] Unique identifier for the paykey in your database, used for cross-referencing be
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

        module AccountType
          extend Straddle::Internal::Type::Enum

          CHECKING = :checking
          SAVINGS = :savings

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute processing_method
          #
          #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::Config::ProcessingMethod, nil]
          optional :processing_method, enum: -> { Straddle::Bridge::LinkCreateTanParams::Config::ProcessingMethod }

          # @!attribute sandbox_outcome
          #
          #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::Bridge::LinkCreateTanParams::Config::SandboxOutcome }

          # @!method initialize(processing_method: nil, sandbox_outcome: nil)
          #   @param processing_method [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::Config::ProcessingMethod]
          #   @param sandbox_outcome [Symbol, Straddle::Models::Bridge::LinkCreateTanParams::Config::SandboxOutcome]

          # @see Straddle::Models::Bridge::LinkCreateTanParams::Config#processing_method
          module ProcessingMethod
            extend Straddle::Internal::Type::Enum

            INLINE = :inline
            BACKGROUND = :background
            SKIP = :skip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Bridge::LinkCreateTanParams::Config#sandbox_outcome
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            ACTIVE = :active
            REJECTED = :rejected
            REVIEW = :review

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
