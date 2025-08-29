# frozen_string_literal: true

module Straddle
  module Resources
    class Bridge
      # @return [Straddle::Resources::Bridge::Link]
      attr_reader :link

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::BridgeInitializeParams} for more details.
      #
      # Use this endpoint to generate a session token for use in the Bridge widget.
      #
      # @overload initialize_(customer_id:, config: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param customer_id [String] Body param: The Straddle generated unique identifier of the `customer` to create
      #
      # @param config [Straddle::Models::BridgeInitializeParams::Config] Body param:
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
      # @return [Straddle::Models::BridgeTokenV1]
      #
      # @see Straddle::Models::BridgeInitializeParams
      def initialize_(params)
        parsed, options = Straddle::BridgeInitializeParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :post,
          path: "v1/bridge/initialize",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::BridgeTokenV1,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
        @link = Straddle::Resources::Bridge::Link.new(client: client)
      end
    end
  end
end
