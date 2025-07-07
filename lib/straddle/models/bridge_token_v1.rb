# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Bridge#initialize_
    class BridgeTokenV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::BridgeTokenV1::Data]
      required :data, -> { Straddle::BridgeTokenV1::Data }

      # @!attribute meta
      #   Metadata about the API request, including an identifier and timestamp.
      #
      #   @return [Straddle::Models::ResponseMetadata]
      required :meta, -> { Straddle::ResponseMetadata }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::BridgeTokenV1::ResponseType]
      required :response_type, enum: -> { Straddle::BridgeTokenV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::BridgeTokenV1} for more details.
      #
      #   @param data [Straddle::Models::BridgeTokenV1::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::BridgeTokenV1::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::BridgeTokenV1#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute bridge_token
        #   JWT Token to use in the bridge widget.
        #
        #   @return [String]
        required :bridge_token, String

        # @!method initialize(bridge_token:)
        #   @param bridge_token [String] JWT Token to use in the bridge widget.
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      #
      # @see Straddle::Models::BridgeTokenV1#response_type
      module ResponseType
        extend Straddle::Internal::Type::Enum

        OBJECT = :object
        ARRAY = :array
        ERROR = :error
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
