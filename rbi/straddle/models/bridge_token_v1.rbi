# typed: strong

module Straddle
  module Models
    class BridgeTokenV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::BridgeTokenV1, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::BridgeTokenV1::Data) }
      attr_reader :data

      sig { params(data: Straddle::BridgeTokenV1::Data::OrHash).void }
      attr_writer :data

      # Metadata about the API request, including an identifier and timestamp.
      sig { returns(Straddle::ResponseMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig { returns(Straddle::BridgeTokenV1::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::BridgeTokenV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::BridgeTokenV1::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Metadata about the API request, including an identifier and timestamp.
        meta:,
        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        response_type:
      )
      end

      sig do
        override.returns(
          {
            data: Straddle::BridgeTokenV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type: Straddle::BridgeTokenV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::BridgeTokenV1::Data, Straddle::Internal::AnyHash)
          end

        # JWT Token to use in the bridge widget.
        sig { returns(String) }
        attr_accessor :bridge_token

        sig { params(bridge_token: String).returns(T.attached_class) }
        def self.new(
          # JWT Token to use in the bridge widget.
          bridge_token:
        )
        end

        sig { override.returns({ bridge_token: String }) }
        def to_hash
        end
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      module ResponseType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::BridgeTokenV1::ResponseType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(:object, Straddle::BridgeTokenV1::ResponseType::TaggedSymbol)
        ARRAY =
          T.let(:array, Straddle::BridgeTokenV1::ResponseType::TaggedSymbol)
        ERROR =
          T.let(:error, Straddle::BridgeTokenV1::ResponseType::TaggedSymbol)
        NONE = T.let(:none, Straddle::BridgeTokenV1::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::BridgeTokenV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
