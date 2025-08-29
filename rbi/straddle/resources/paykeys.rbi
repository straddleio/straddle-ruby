# typed: strong

module Straddle
  module Resources
    class Paykeys
      # Returns a list of paykeys associated with a Straddle account. This endpoint
      # supports advanced sorting and filtering options.
      sig do
        params(
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
          sort_order: Straddle::PaykeyListParams::SortOrder::OrSymbol,
          source: T::Array[Straddle::PaykeyListParams::Source::OrSymbol],
          status: T::Array[Straddle::PaykeyListParams::Status::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(
          Straddle::Internal::PageNumberSchema[
            Straddle::PaykeySummaryPagedV1::Data
          ]
        )
      end
      def list(
        # Query param: Filter paykeys by related customer ID.
        customer_id: nil,
        # Query param: Page number for paginated results. Starts at 1.
        page_number: nil,
        # Query param: Number of results per page. Maximum: 1000.
        page_size: nil,
        # Query param:
        sort_by: nil,
        # Query param:
        sort_order: nil,
        # Query param: Filter paykeys by their source.
        source: nil,
        # Query param: Filter paykeys by their current status.
        status: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyV1)
      end
      def cancel(
        # Path param:
        id,
        # Body param:
        reason: nil,
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

      # Retrieves the details of an existing paykey. Supply the unique paykey `id` and
      # Straddle will return the corresponding paykey record , including the `paykey`
      # token value and masked bank account details.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyV1)
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

      # Retrieves the details of a paykey that has previously been created, including
      # unmasked bank account fields. Supply the unique paykey ID that was returned from
      # your previous request, and Straddle will return the corresponding paykey
      # information.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::Models::PaykeyRevealResponse)
      end
      def reveal(
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

      # Update the status of a paykey when in review status
      sig do
        params(
          id: String,
          status: Straddle::PaykeyReviewParams::Status::OrSymbol,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyV1)
      end
      def review(
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

      # Retrieves the unmasked details of an existing paykey. Supply the unique paykey
      # `id` and Straddle will return the corresponding paykey record, including the
      # unmasked bank account details. This endpoint needs to be enabled by Straddle for
      # your account and should only be used when absolutely necessary.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyUnmaskedV1)
      end
      def unmasked(
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
