# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#upload_authorization_document
    class PayoutUploadAuthorizationDocumentParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute file
      #   The document file to upload as proof of authorization for this payout.
      #
      #   @return [Pathname, StringIO, IO, String, Straddle::FilePart]
      required :file, Straddle::Internal::Type::FileInput, api_name: :File

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

      # @!method initialize(id:, file:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param file [Pathname, StringIO, IO, String, Straddle::FilePart] The document file to upload as proof of authorization for this payout.
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
