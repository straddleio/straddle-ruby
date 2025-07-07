# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Straddle::Models::FundingEventSummaryPagedV1::Data>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::FundingEventSummaryPagedV1::Data] }

      # @!attribute meta
      #
      #   @return [Straddle::Models::FundingEventSummaryPagedV1::Meta]
      required :meta, -> { Straddle::FundingEventSummaryPagedV1::Meta }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::ResponseType]
      required :response_type, enum: -> { Straddle::FundingEventSummaryPagedV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEventSummaryPagedV1} for more details.
      #
      #   @param data [Array<Straddle::Models::FundingEventSummaryPagedV1::Data>]
      #
      #   @param meta [Straddle::Models::FundingEventSummaryPagedV1::Meta]
      #
      #   @param response_type [Symbol, Straddle::Models::FundingEventSummaryPagedV1::ResponseType] Indicates the structure of the returned content.

      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the funding event.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the funding event in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute direction
        #   Describes the direction of the funding event from the perspective of the
        #   `linked_bank_account`.
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Direction]
        required :direction, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::Direction }

        # @!attribute event_type
        #   The funding event types describes the direction and reason for the funding
        #   event.
        #
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::EventType]
        required :event_type, enum: -> { Straddle::FundingEventSummaryPagedV1::Data::EventType }

        # @!attribute payment_count
        #   The number of payments associated with the funding event.
        #
        #   @return [Integer]
        required :payment_count, Integer

        # @!attribute trace_numbers
        #   Trace number.
        #
        #   @return [Array<String>]
        required :trace_numbers, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute transfer_date
        #   The date on which the funding event occurred. For `deposits` and `returns`, this
        #   is the date the funds were credited to your bank account. For `withdrawals` and
        #   `reversals`, this is the date the funds were debited from your bank account.
        #
        #   @return [Date]
        required :transfer_date, Date

        # @!attribute trace_number
        #   The trace number of the funding event.
        #
        #   @return [String, nil]
        optional :trace_number, String, nil?: true

        # @!method initialize(id:, amount:, direction:, event_type:, payment_count:, trace_numbers:, transfer_date:, trace_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::FundingEventSummaryPagedV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the funding event.
        #
        #   @param amount [Integer] The amount of the funding event in cents.
        #
        #   @param direction [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::Direction] Describes the direction of the funding event from the perspective of the `linked
        #
        #   @param event_type [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Data::EventType] The funding event types describes the direction and reason for the funding event
        #
        #   @param payment_count [Integer] The number of payments associated with the funding event.
        #
        #   @param trace_numbers [Array<String>] Trace number.
        #
        #   @param transfer_date [Date] The date on which the funding event occurred. For `deposits` and `returns`, this
        #
        #   @param trace_number [String, nil] The trace number of the funding event.

        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        #
        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#direction
        module Direction
          extend Straddle::Internal::Type::Enum

          DEPOSIT = :deposit
          WITHDRAWAL = :withdrawal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The funding event types describes the direction and reason for the funding
        # event.
        #
        # @see Straddle::Models::FundingEventSummaryPagedV1::Data#event_type
        module EventType
          extend Straddle::Internal::Type::Enum

          CHARGE_DEPOSIT = :charge_deposit
          CHARGE_REVERSAL = :charge_reversal
          PAYOUT_RETURN = :payout_return
          PAYOUT_WITHDRAWAL = :payout_withdrawal

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Straddle::Models::FundingEventSummaryPagedV1#meta
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
        #   @return [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Meta::SortOrder]
        required :sort_order, enum: -> { Straddle::FundingEventSummaryPagedV1::Meta::SortOrder }

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
        #   @param sort_order [Symbol, Straddle::Models::FundingEventSummaryPagedV1::Meta::SortOrder]
        #
        #   @param total_items [Integer]
        #
        #   @param total_pages [Integer] The number of pages available.

        # @see Straddle::Models::FundingEventSummaryPagedV1::Meta#sort_order
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
      # @see Straddle::Models::FundingEventSummaryPagedV1#response_type
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
