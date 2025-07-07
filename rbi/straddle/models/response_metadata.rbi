# typed: strong

module Straddle
  module Models
    class ResponseMetadata < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::ResponseMetadata, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this API request, useful for troubleshooting.
      sig { returns(String) }
      attr_accessor :api_request_id

      # Timestamp for this API request, useful for troubleshooting.
      sig { returns(Time) }
      attr_accessor :api_request_timestamp

      # Metadata about the API request, including an identifier and timestamp.
      sig do
        params(api_request_id: String, api_request_timestamp: Time).returns(
          T.attached_class
        )
      end
      def self.new(
        # Unique identifier for this API request, useful for troubleshooting.
        api_request_id:,
        # Timestamp for this API request, useful for troubleshooting.
        api_request_timestamp:
      )
      end

      sig do
        override.returns(
          { api_request_id: String, api_request_timestamp: Time }
        )
      end
      def to_hash
      end
    end
  end
end
