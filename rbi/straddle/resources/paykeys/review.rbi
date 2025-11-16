# typed: strong

module Straddle
  module Resources
    class Paykeys
      class Review
        # Update the status of a paykey when in review status
        sig do
          params(
            id: String,
            status: Straddle::Paykeys::ReviewDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::PaykeyV1)
        end
        def decision(
          # Path param:
          id,
          # Body param:
          status:,
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

        # Get additional details about a paykey.
        sig do
          params(
            id: String,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Models::Paykeys::ReviewGetResponse)
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

        # Updates the decision of a paykey's review validation. This endpoint allows you
        # to refresh the outcome of a paykey's decision and is useful for correcting or
        # updating the status of a paykey's verification.
        sig do
          params(
            id: String,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::PaykeyV1)
        end
        def refresh_review(
          id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated value to use for idempotent requests.
          idempotency_key: nil,
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
end
