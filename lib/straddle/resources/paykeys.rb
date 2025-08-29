# frozen_string_literal: true

module Straddle
  module Resources
    class Paykeys
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyListParams} for more details.
      #
      # Returns a list of paykeys associated with a Straddle account. This endpoint
      # supports advanced sorting and filtering options.
      #
      # @overload list(customer_id: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, source: nil, status: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param customer_id [String] Query param: Filter paykeys by related customer ID.
      #
      # @param page_number [Integer] Query param: Page number for paginated results. Starts at 1.
      #
      # @param page_size [Integer] Query param: Number of results per page. Maximum: 1000.
      #
      # @param sort_by [Symbol, Straddle::Models::PaykeyListParams::SortBy] Query param:
      #
      # @param sort_order [Symbol, Straddle::Models::PaykeyListParams::SortOrder] Query param:
      #
      # @param source [Array<Symbol, Straddle::Models::PaykeyListParams::Source>] Query param: Filter paykeys by their source.
      #
      # @param status [Array<Symbol, Straddle::Models::PaykeyListParams::Status>] Query param: Filter paykeys by their current status.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::PaykeySummaryPagedV1::Data>]
      #
      # @see Straddle::Models::PaykeyListParams
      def list(params = {})
        parsed, options = Straddle::PaykeyListParams.dump_request(params)
        query_params = [:customer_id, :page_number, :page_size, :sort_by, :sort_order, :source, :status]
        @client.request(
          method: :get,
          path: "v1/paykeys",
          query: parsed.slice(*query_params),
          headers: parsed.except(*query_params).transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          page: Straddle::Internal::PageNumberSchema,
          model: Straddle::PaykeySummaryPagedV1::Data,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyCancelParams} for more details.
      #
      # @overload cancel(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String, nil] Body param:
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaykeyV1]
      #
      # @see Straddle::Models::PaykeyCancelParams
      def cancel(id, params = {})
        parsed, options = Straddle::PaykeyCancelParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/paykeys/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PaykeyV1,
          options: options
        )
      end

      # Retrieves the details of an existing paykey. Supply the unique paykey `id` and
      # Straddle will return the corresponding paykey record , including the `paykey`
      # token value and masked bank account details.
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
      # @return [Straddle::Models::PaykeyV1]
      #
      # @see Straddle::Models::PaykeyGetParams
      def get(id, params = {})
        parsed, options = Straddle::PaykeyGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::PaykeyV1,
          options: options
        )
      end

      # Retrieves the details of a paykey that has previously been created, including
      # unmasked bank account fields. Supply the unique paykey ID that was returned from
      # your previous request, and Straddle will return the corresponding paykey
      # information.
      #
      # @overload reveal(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::PaykeyRevealResponse]
      #
      # @see Straddle::Models::PaykeyRevealParams
      def reveal(id, params = {})
        parsed, options = Straddle::PaykeyRevealParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s/reveal", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::Models::PaykeyRevealResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyReviewParams} for more details.
      #
      # Update the status of a paykey when in review status
      #
      # @overload review(id, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param status [Symbol, Straddle::Models::PaykeyReviewParams::Status] Body param:
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaykeyV1]
      #
      # @see Straddle::Models::PaykeyReviewParams
      def review(id, params)
        parsed, options = Straddle::PaykeyReviewParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :patch,
          path: ["v1/paykeys/%1$s/review", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PaykeyV1,
          options: options
        )
      end

      # Retrieves the unmasked details of an existing paykey. Supply the unique paykey
      # `id` and Straddle will return the corresponding paykey record, including the
      # unmasked bank account details. This endpoint needs to be enabled by Straddle for
      # your account and should only be used when absolutely necessary.
      #
      # @overload unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::PaykeyUnmaskedV1]
      #
      # @see Straddle::Models::PaykeyUnmaskedParams
      def unmasked(id, params = {})
        parsed, options = Straddle::PaykeyUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s/unmasked", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::PaykeyUnmaskedV1,
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
