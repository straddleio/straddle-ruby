# frozen_string_literal: true

module Straddle
  module Resources
    class Charges
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeCreateParams} for more details.
      #
      # Use charges to collect money from a customer for the sale of goods or services.
      #
      # @overload create(amount:, config:, consent_type:, currency:, description:, device:, external_id:, paykey:, payment_date:, metadata: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param amount [Integer] Body param: The amount of the charge in cents.
      #
      # @param config [Straddle::Models::ChargeCreateParams::Config] Body param:
      #
      # @param consent_type [Symbol, Straddle::Models::ChargeCreateParams::ConsentType] Body param: The channel or mechanism through which the payment was authorized. U
      #
      # @param currency [String] Body param: The currency of the charge. Only USD is supported.
      #
      # @param description [String] Body param: An arbitrary description for the charge.
      #
      # @param device [Straddle::Models::DeviceInfoV1] Body param:
      #
      # @param external_id [String] Body param: Unique identifier for the charge in your database. This value must b
      #
      # @param paykey [String] Body param: Value of the `paykey` used for the charge.
      #
      # @param payment_date [Date] Body param: The desired date on which the payment should be occur. For charges,
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeCreateParams
      def create(params)
        parsed, options = Straddle::ChargeCreateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :post,
          path: "v1/charges",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeUpdateParams} for more details.
      #
      # Change the values of parameters associated with a charge prior to processing.
      # The status of the charge must be `created`, `scheduled`, or `on_hold`.
      #
      # @overload update(id, amount:, description:, payment_date:, metadata: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param amount [Integer] Body param: The amount of the charge in cents.
      #
      # @param description [String] Body param: An arbitrary description for the charge.
      #
      # @param payment_date [Date] Body param: The desired date on which the payment should be occur. For charges,
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeUpdateParams
      def update(id, params)
        parsed, options = Straddle::ChargeUpdateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeCancelParams} for more details.
      #
      # Cancel a charge to prevent it from being originated for processing. The status
      # of the charge must be `created`, `scheduled`, or `on_hold`.
      #
      # @overload cancel(id, reason: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String, nil] Body param: Details about why the charge status was updated.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeCancelParams
      def cancel(id, params = {})
        parsed, options = Straddle::ChargeCancelParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Retrieves the details of an existing charge. Supply the unique charge `id`, and
      # Straddle will return the corresponding charge information.
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
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeGetParams
      def get(id, params = {})
        parsed, options = Straddle::ChargeGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/charges/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeHoldParams} for more details.
      #
      # Place a charge on hold to prevent it from being originated for processing. The
      # status of the charge must be `created` or `scheduled`.
      #
      # @overload hold(id, reason: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String, nil] Body param: Details about why the charge status was updated.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeHoldParams
      def hold(id, params = {})
        parsed, options = Straddle::ChargeHoldParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/hold", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeReleaseParams} for more details.
      #
      # Release a charge from an `on_hold` status to allow it to be rescheduled for
      # processing.
      #
      # @overload release(id, reason: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param reason [String, nil] Body param: Details about why the charge status was updated.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeV1]
      #
      # @see Straddle::Models::ChargeReleaseParams
      def release(id, params = {})
        parsed, options = Straddle::ChargeReleaseParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/release", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeV1,
          options: options
        )
      end

      # Get a charge by id.
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
      # @return [Straddle::Models::ChargeUnmaskResponse]
      #
      # @see Straddle::Models::ChargeUnmaskParams
      def unmask(id, params = {})
        parsed, options = Straddle::ChargeUnmaskParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/charges/%1$s/unmask", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::Models::ChargeUnmaskResponse,
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
