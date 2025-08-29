# typed: strong

module Straddle
  module Resources
    class Customers
      class Review
        # Updates the status of a customer's identity decision. This endpoint allows you
        # to modify the outcome of a customer risk screening and is useful for correcting
        # or updating the status of a customer's verification. Note that this endpoint is
        # only available for customers with a current status of `review`.
        sig do
          params(
            id: String,
            status: Straddle::Customers::ReviewDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::CustomerV1)
        end
        def decision(
          # Path param:
          id,
          # Body param: The final status of the customer review.
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

        # Retrieves and analyzes the results of a customer's identity validation and fraud
        # score. This endpoint provides a comprehensive breakdown of the validation
        # outcome, including:
        #
        # - Risk and correlation scores
        # - Reason codes for the decision
        # - Results of watchlist screening
        # - Any network alerts detected Use this endpoint to gain insights into the
        #   verification process and make informed decisions about customer onboarding.
        sig do
          params(
            id: String,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Customers::CustomerReviewV1)
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
end
