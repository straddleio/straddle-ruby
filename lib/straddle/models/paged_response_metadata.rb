# frozen_string_literal: true

module Straddle
  module Models
    class PagedResponseMetadata < Straddle::Internal::Type::BaseModel
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

      # @!attribute max_page_size
      #   Maximum allowed page size for this endpoint.
      #
      #   @return [Integer]
      required :max_page_size, Integer

      # @!attribute page_number
      #   Page number for paginated results.
      #
      #   @return [Integer]
      required :page_number, Integer

      # @!attribute page_size
      #   Number of items per page in this response.
      #
      #   @return [Integer]
      required :page_size, Integer

      # @!attribute sort_by
      #   The field that the results were sorted by.
      #
      #   @return [String]
      required :sort_by, String

      # @!attribute sort_order
      #
      #   @return [Symbol, Straddle::Models::PagedResponseMetadata::SortOrder]
      required :sort_order, enum: -> { Straddle::PagedResponseMetadata::SortOrder }

      # @!attribute total_items
      #   Total number of items returned in this response.
      #
      #   @return [Integer]
      required :total_items, Integer

      # @!attribute total_pages
      #   The number of pages available.
      #
      #   @return [Integer]
      required :total_pages, Integer

      # @!method initialize(api_request_id:, api_request_timestamp:, max_page_size:, page_number:, page_size:, sort_by:, sort_order:, total_items:, total_pages:)
      #   Metadata about the API request, including an identifier, timestamp, and
      #   pagination details.
      #
      #   @param api_request_id [String] Unique identifier for this API request, useful for troubleshooting.
      #
      #   @param api_request_timestamp [Time] Timestamp for this API request, useful for troubleshooting.
      #
      #   @param max_page_size [Integer] Maximum allowed page size for this endpoint.
      #
      #   @param page_number [Integer] Page number for paginated results.
      #
      #   @param page_size [Integer] Number of items per page in this response.
      #
      #   @param sort_by [String] The field that the results were sorted by.
      #
      #   @param sort_order [Symbol, Straddle::Models::PagedResponseMetadata::SortOrder]
      #
      #   @param total_items [Integer] Total number of items returned in this response.
      #
      #   @param total_pages [Integer] The number of pages available.

      # @see Straddle::Models::PagedResponseMetadata#sort_order
      module SortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
