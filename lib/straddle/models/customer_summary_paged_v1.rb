# frozen_string_literal: true

module Straddle
  module Models
    class CustomerSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Straddle::Models::CustomerSummaryPagedV1::Data>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::CustomerSummaryPagedV1::Data] }

      # @!attribute meta
      #
      #   @return [Straddle::Models::CustomerSummaryPagedV1::Meta]
      required :meta, -> { Straddle::CustomerSummaryPagedV1::Meta }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::CustomerSummaryPagedV1::ResponseType]
      required :response_type, enum: -> { Straddle::CustomerSummaryPagedV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CustomerSummaryPagedV1} for more details.
      #
      #   @param data [Array<Straddle::Models::CustomerSummaryPagedV1::Data>]
      #
      #   @param meta [Straddle::Models::CustomerSummaryPagedV1::Meta]
      #
      #   @param response_type [Symbol, Straddle::Models::CustomerSummaryPagedV1::ResponseType] Indicates the structure of the returned content.

      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the customer.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the customer record was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute email
        #   The customer's email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   Full name of the individual or business name.
        #
        #   @return [String]
        required :name, String

        # @!attribute phone
        #   The customer's phone number in E.164 format.
        #
        #   @return [String]
        required :phone, String

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::CustomerSummaryPagedV1::Data::Status]
        required :status, enum: -> { Straddle::CustomerSummaryPagedV1::Data::Status }

        # @!attribute type
        #
        #   @return [Symbol, Straddle::Models::CustomerSummaryPagedV1::Data::Type]
        required :type, enum: -> { Straddle::CustomerSummaryPagedV1::Data::Type }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the customer record.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute external_id
        #   Unique identifier for the customer in your database, used for cross-referencing
        #   between Straddle and your systems.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!method initialize(id:, created_at:, email:, name:, phone:, status:, type:, updated_at:, external_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::CustomerSummaryPagedV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the customer.
        #
        #   @param created_at [Time] Timestamp of when the customer record was created.
        #
        #   @param email [String] The customer's email address.
        #
        #   @param name [String] Full name of the individual or business name.
        #
        #   @param phone [String] The customer's phone number in E.164 format.
        #
        #   @param status [Symbol, Straddle::Models::CustomerSummaryPagedV1::Data::Status]
        #
        #   @param type [Symbol, Straddle::Models::CustomerSummaryPagedV1::Data::Type]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
        #
        #   @param external_id [String, nil] Unique identifier for the customer in your database, used for cross-referencing

        # @see Straddle::Models::CustomerSummaryPagedV1::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          PENDING = :pending
          REVIEW = :review
          VERIFIED = :verified
          INACTIVE = :inactive
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::CustomerSummaryPagedV1::Data#type
        module Type
          extend Straddle::Internal::Type::Enum

          INDIVIDUAL = :individual
          BUSINESS = :business

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Straddle::Models::CustomerSummaryPagedV1#meta
      class Meta < Straddle::Internal::Type::BaseModel
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
        #   @return [Symbol, Straddle::Models::CustomerSummaryPagedV1::Meta::SortOrder]
        required :sort_order, enum: -> { Straddle::CustomerSummaryPagedV1::Meta::SortOrder }

        # @!attribute total_items
        #
        #   @return [Integer]
        required :total_items, Integer

        # @!attribute total_pages
        #   The number of pages available.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!method initialize(api_request_id:, api_request_timestamp:, max_page_size:, page_number:, page_size:, sort_by:, sort_order:, total_items:, total_pages:)
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
        #   @param sort_order [Symbol, Straddle::Models::CustomerSummaryPagedV1::Meta::SortOrder]
        #
        #   @param total_items [Integer]
        #
        #   @param total_pages [Integer] The number of pages available.

        # @see Straddle::Models::CustomerSummaryPagedV1::Meta#sort_order
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      #
      # @see Straddle::Models::CustomerSummaryPagedV1#response_type
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
