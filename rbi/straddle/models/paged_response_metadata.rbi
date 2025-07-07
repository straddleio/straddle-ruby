# typed: strong

module Straddle
  module Models
    class PagedResponseMetadata < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PagedResponseMetadata, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this API request, useful for troubleshooting.
      sig { returns(String) }
      attr_accessor :api_request_id

      # Timestamp for this API request, useful for troubleshooting.
      sig { returns(Time) }
      attr_accessor :api_request_timestamp

      # Maximum allowed page size for this endpoint.
      sig { returns(Integer) }
      attr_accessor :max_page_size

      # Page number for paginated results.
      sig { returns(Integer) }
      attr_accessor :page_number

      # Number of items per page in this response.
      sig { returns(Integer) }
      attr_accessor :page_size

      # The field that the results were sorted by.
      sig { returns(String) }
      attr_accessor :sort_by

      sig { returns(Straddle::PagedResponseMetadata::SortOrder::TaggedSymbol) }
      attr_accessor :sort_order

      # Total number of items returned in this response.
      sig { returns(Integer) }
      attr_accessor :total_items

      # The number of pages available.
      sig { returns(Integer) }
      attr_accessor :total_pages

      # Metadata about the API request, including an identifier, timestamp, and
      # pagination details.
      sig do
        params(
          api_request_id: String,
          api_request_timestamp: Time,
          max_page_size: Integer,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order: Straddle::PagedResponseMetadata::SortOrder::OrSymbol,
          total_items: Integer,
          total_pages: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this API request, useful for troubleshooting.
        api_request_id:,
        # Timestamp for this API request, useful for troubleshooting.
        api_request_timestamp:,
        # Maximum allowed page size for this endpoint.
        max_page_size:,
        # Page number for paginated results.
        page_number:,
        # Number of items per page in this response.
        page_size:,
        # The field that the results were sorted by.
        sort_by:,
        sort_order:,
        # Total number of items returned in this response.
        total_items:,
        # The number of pages available.
        total_pages:
      )
      end

      sig do
        override.returns(
          {
            api_request_id: String,
            api_request_timestamp: Time,
            max_page_size: Integer,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::PagedResponseMetadata::SortOrder::TaggedSymbol,
            total_items: Integer,
            total_pages: Integer
          }
        )
      end
      def to_hash
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PagedResponseMetadata::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, Straddle::PagedResponseMetadata::SortOrder::TaggedSymbol)
        DESC =
          T.let(:desc, Straddle::PagedResponseMetadata::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PagedResponseMetadata::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
