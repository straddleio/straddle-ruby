# frozen_string_literal: true

module Straddle
  module Models
    class ResponseMetadata < Straddle::Internal::Type::BaseModel
      # @!attribute api_request_id
      #   Unique identifier for this API request, useful for troubleshooting.
      #
      #   @return [String]
      required :api_request_id, String

      # @!attribute api_request_timestamp
      #   Timestamp for this API request, useful for troubleshooting.
      #
      #   @return [Time]
      required :api_request_timestamp, Time

      # @!method initialize(api_request_id:, api_request_timestamp:)
      #   Metadata about the API request, including an identifier and timestamp.
      #
      #   @param api_request_id [String] Unique identifier for this API request, useful for troubleshooting.
      #
      #   @param api_request_timestamp [Time] Timestamp for this API request, useful for troubleshooting.
    end
  end
end
