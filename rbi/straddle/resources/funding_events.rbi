# typed: strong

module Straddle
  module Resources
    class FundingEvents
      # Retrieves a list of funding events for your account. This endpoint supports
      # advanced sorting and filtering options.
      sig do
        params(
          created_from: T.nilable(Date),
          created_to: T.nilable(Date),
          direction: Straddle::FundingEventListParams::Direction::OrSymbol,
          event_type: Straddle::FundingEventListParams::EventType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
          sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol,
          trace_number: T.nilable(String),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(
          Straddle::Internal::PageNumberSchema[
            Straddle::FundingEventSummaryPagedV1::Data
          ]
        )
      end
      def list(
        # Query param: The start date of the range to filter by using the `YYYY-MM-DD`
        # format.
        created_from: nil,
        # Query param: The end date of the range to filter by using the `YYYY-MM-DD`
        # format.
        created_to: nil,
        # Query param: Describes the direction of the funding event from the perspective
        # of the `linked_bank_account`.
        direction: nil,
        # Query param: The funding event types describes the direction and reason for the
        # funding event.
        event_type: nil,
        # Query param: Results page number. Starts at page 1.
        page_number: nil,
        # Query param: Results page size. Max value: 1000
        page_size: nil,
        # Query param: The field to sort the results by.
        sort_by: nil,
        # Query param: The order in which to sort the results.
        sort_order: nil,
        # Query param: Trace number.
        trace_number: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing funding event. Supply the unique funding
      # event `id`, and Straddle will return the individual transaction items that make
      # up the funding event.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::FundingEventSummaryItemV1)
      end
      def get(
        id,
        # Optional client generated identifier to trace and debug a series of requests.
        correlation_id: nil,
        # Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # For use by platforms to specify an account id and set scope of a request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
