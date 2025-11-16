# frozen_string_literal: true

module Straddle
  module Resources
    class FundingEvents
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::FundingEventListParams} for more details.
      #
      # Retrieves a list of funding events for your account. This endpoint supports
      # advanced sorting and filtering options.
      #
      # @overload list(created_from: nil, created_to: nil, direction: nil, event_type: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, trace_number: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param created_from [Date, nil] Query param: The start date of the range to filter by using the `YYYY-MM-DD` for
      #
      # @param created_to [Date, nil] Query param: The end date of the range to filter by using the `YYYY-MM-DD` forma
      #
      # @param direction [Symbol, Straddle::Models::FundingEventListParams::Direction] Query param: Describes the direction of the funding event from the perspective o
      #
      # @param event_type [Symbol, Straddle::Models::FundingEventListParams::EventType] Query param: The funding event types describes the direction and reason for the
      #
      # @param page_number [Integer] Query param: Results page number. Starts at page 1.
      #
      # @param page_size [Integer] Query param: Results page size. Max value: 1000
      #
      # @param search_text [String, nil] Query param: Search text.
      #
      # @param sort_by [Symbol, Straddle::Models::FundingEventListParams::SortBy] Query param: The field to sort the results by.
      #
      # @param sort_order [Symbol, Straddle::Models::FundingEventListParams::SortOrder] Query param: The order in which to sort the results.
      #
      # @param trace_number [String, nil] Query param: Trace number.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::FundingEventSummaryPagedV1::Data>]
      #
      # @see Straddle::Models::FundingEventListParams
      def list(params = {})
        parsed, options = Straddle::FundingEventListParams.dump_request(params)
        query_params =
          [
            :created_from,
            :created_to,
            :direction,
            :event_type,
            :page_number,
            :page_size,
            :search_text,
            :sort_by,
            :sort_order,
            :trace_number
          ]
        @client.request(
          method: :get,
          path: "v1/funding_events",
          query: parsed.slice(*query_params),
          headers: parsed.except(*query_params).transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          page: Straddle::Internal::PageNumberSchema,
          model: Straddle::FundingEventSummaryPagedV1::Data,
          options: options
        )
      end

      # Retrieves the details of an existing funding event. Supply the unique funding
      # event `id`, and Straddle will return the individual transaction items that make
      # up the funding event.
      #
      # @overload get(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::FundingEventSummaryItemV1]
      #
      # @see Straddle::Models::FundingEventGetParams
      def get(id, params = {})
        parsed, options = Straddle::FundingEventGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/funding_events/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::FundingEventSummaryItemV1,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
