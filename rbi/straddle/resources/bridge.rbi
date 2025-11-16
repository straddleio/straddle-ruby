# typed: strong

module Straddle
  module Resources
    class Bridge
      sig { returns(Straddle::Resources::Bridge::Link) }
      attr_reader :link

      # Use this endpoint to generate a session token for use in the Bridge widget.
      sig do
        params(
          customer_id: String,
          config: Straddle::BridgeInitializeParams::Config::OrHash,
          external_id: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::BridgeTokenV1)
      end
      def initialize_(
        # Body param: The Straddle generated unique identifier of the `customer` to create
        # a bridge token for.
        customer_id:,
        # Body param:
        config: nil,
        # Body param: Unique identifier for the paykey in your database, used for
        # cross-referencing between Straddle and your systems.
        external_id: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated value to use for idempotent requests.
        idempotency_key: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
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
