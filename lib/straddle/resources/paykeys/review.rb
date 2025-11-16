# frozen_string_literal: true

module Straddle
  module Resources
    class Paykeys
      class Review
        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Paykeys::ReviewDecisionParams} for more details.
        #
        # Update the status of a paykey when in review status
        #
        # @overload decision(id, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Path param:
        #
        # @param status [Symbol, Straddle::Models::Paykeys::ReviewDecisionParams::Status] Body param:
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
        # @see Straddle::Models::Paykeys::ReviewDecisionParams
        def decision(id, params)
          parsed, options = Straddle::Paykeys::ReviewDecisionParams.dump_request(params)
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

        # Get additional details about a paykey.
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
        # @return [Straddle::Models::Paykeys::ReviewGetResponse]
        #
        # @see Straddle::Models::Paykeys::ReviewGetParams
        def get(id, params = {})
          parsed, options = Straddle::Paykeys::ReviewGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/paykeys/%1$s/review", id],
            headers: parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
            model: Straddle::Models::Paykeys::ReviewGetResponse,
            options: options
          )
        end

        # Updates the decision of a paykey's review validation. This endpoint allows you
        # to refresh the outcome of a paykey's decision and is useful for correcting or
        # updating the status of a paykey's verification.
        #
        # @overload refresh_review(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param idempotency_key [String] Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::PaykeyV1]
        #
        # @see Straddle::Models::Paykeys::ReviewRefreshReviewParams
        def refresh_review(id, params = {})
          parsed, options = Straddle::Paykeys::ReviewRefreshReviewParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/paykeys/%1$s/refresh_review", id],
            headers: parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
            model: Straddle::PaykeyV1,
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
end
