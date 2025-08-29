# frozen_string_literal: true

module Straddle
  module Resources
    class Payouts
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutCreateParams} for more details.
      #
      # Use payouts to send money to your customers.
      #
      # @overload create(amount:, currency:, description:, device:, external_id:, paykey:, payment_date:, config: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param amount [Integer] Body param: The amount of the payout in cents.
      #
      # @param currency [String] Body param: The currency of the payout. Only USD is supported.
      #
      # @param description [String] Body param: An arbitrary description for the payout.
      #
      # @param device [Straddle::Models::DeviceInfoV1] Body param: Information about the device used when the customer authorized the p
      #
      # @param external_id [String] Body param: Unique identifier for the payout in your database. This value must b
      #
      # @param paykey [String] Body param: Value of the `paykey` used for the payout.
      #
      # @param payment_date [Date] Body param: The desired date on which the payout should be occur. For payouts, t
      #
      # @param config [Straddle::Models::PayoutCreateParams::Config] Body param:
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutCreateParams
      def create(params)
        parsed, options = Straddle::PayoutCreateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :post,
          path: "v1/payouts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutUpdateParams} for more details.
      #
      # Update the details of a payout prior to processing. The status of the payout
      # must be `created`, `scheduled`, or `on_hold`.
      #
      # @overload update(id, amount:, description:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param amount [Integer] Body param: The amount of the payout in cents.
      #
      # @param description [String] Body param: An arbitrary description for the payout.
      #
      # @param payment_date [Date] Body param: The desired date on which the payment should be occur. For payouts,
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutUpdateParams
      def update(id, params)
        parsed, options = Straddle::PayoutUpdateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutCancelParams} for more details.
      #
      # Cancel a payout to prevent it from being processed. The status of the payout
      # must be `created`, `scheduled`, or `on_hold`.
      #
      # @overload cancel(id, reason:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String] Body param: Details about why the payout status was updated.
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutCancelParams
      def cancel(id, params)
        parsed, options = Straddle::PayoutCancelParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Retrieves the details of an existing payout. Supply the unique payout `id` to
      # retrieve the corresponding payout information.
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutGetParams
      def get(id, params = {})
        parsed, options = Straddle::PayoutGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/payouts/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutHoldParams} for more details.
      #
      # Hold a payout to prevent it from being processed. The status of the payout must
      # be `created`, `scheduled`, or `on_hold`.
      #
      # @overload hold(id, reason:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String] Body param: Details about why the payout status was updated.
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutHoldParams
      def hold(id, params)
        parsed, options = Straddle::PayoutHoldParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/hold", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutReleaseParams} for more details.
      #
      # Release a payout from a `hold` status to allow it to be rescheduled for
      # processing.
      #
      # @overload release(id, reason:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String] Body param: Details about why the payout status was updated.
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
      # @return [Straddle::Models::PayoutV1]
      #
      # @see Straddle::Models::PayoutReleaseParams
      def release(id, params)
        parsed, options = Straddle::PayoutReleaseParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/release", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutV1,
          options: options
        )
      end

      # Get a payout by id.
      #
      # @overload unmask(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::PayoutUnmaskResponse]
      #
      # @see Straddle::Models::PayoutUnmaskParams
      def unmask(id, params = {})
        parsed, options = Straddle::PayoutUnmaskParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/payouts/%1$s/unmask", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::Models::PayoutUnmaskResponse,
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
