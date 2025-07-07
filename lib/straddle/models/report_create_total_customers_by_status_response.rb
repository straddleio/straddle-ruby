# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Reports#create_total_customers_by_status
    class ReportCreateTotalCustomersByStatusResponse < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data]
      required :data, -> { Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data }

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
      #   @return [Symbol, Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType]
      required :response_type,
               enum: -> { Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::ReportCreateTotalCustomersByStatusResponse} for more details.
      #
      #   @param data [Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::ReportCreateTotalCustomersByStatusResponse#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute inactive
        #
        #   @return [Integer]
        required :inactive, Integer

        # @!attribute pending
        #
        #   @return [Integer]
        required :pending, Integer

        # @!attribute rejected
        #
        #   @return [Integer]
        required :rejected, Integer

        # @!attribute review
        #
        #   @return [Integer]
        required :review, Integer

        # @!attribute verified
        #
        #   @return [Integer]
        required :verified, Integer

        # @!method initialize(inactive:, pending:, rejected:, review:, verified:)
        #   @param inactive [Integer]
        #   @param pending [Integer]
        #   @param rejected [Integer]
        #   @param review [Integer]
        #   @param verified [Integer]
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      #
      # @see Straddle::Models::ReportCreateTotalCustomersByStatusResponse#response_type
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
