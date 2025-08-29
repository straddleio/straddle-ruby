# frozen_string_literal: true

module Straddle
  module Resources
    class Customers
      class Review
        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Customers::ReviewDecisionParams} for more details.
        #
        # Updates the status of a customer's identity decision. This endpoint allows you
        # to modify the outcome of a customer risk screening and is useful for correcting
        # or updating the status of a customer's verification. Note that this endpoint is
        # only available for customers with a current status of `review`.
        #
        # @overload decision(id, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Path param:
        #
        # @param status [Symbol, Straddle::Models::Customers::ReviewDecisionParams::Status] Body param: The final status of the customer review.
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
        # @return [Straddle::Models::CustomerV1]
        #
        # @see Straddle::Models::Customers::ReviewDecisionParams
        def decision(id, params)
          parsed, options = Straddle::Customers::ReviewDecisionParams.dump_request(params)
          header_params =
            {
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            }
          @client.request(
            method: :patch,
            path: ["v1/customers/%1$s/review", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::CustomerV1,
            options: options
          )
        end

        # Retrieves and analyzes the results of a customer's identity validation and fraud
        # score. This endpoint provides a comprehensive breakdown of the validation
        # outcome, including:
        #
        # - Risk and correlation scores
        # - Reason codes for the decision
        # - Results of watchlist screening
        # - Any network alerts detected Use this endpoint to gain insights into the
        #   verification process and make informed decisions about customer onboarding.
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
        # @return [Straddle::Models::Customers::CustomerReviewV1]
        #
        # @see Straddle::Models::Customers::ReviewGetParams
        def get(id, params = {})
          parsed, options = Straddle::Customers::ReviewGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/customers/%1$s/review", id],
            headers: parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
            model: Straddle::Customers::CustomerReviewV1,
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
