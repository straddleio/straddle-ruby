# typed: strong

module Straddle
  module Resources
    class Payouts
      # Use payouts to send money to your customers.
      sig do
        params(
          amount: Integer,
          currency: String,
          description: String,
          device: Straddle::DeviceInfoV1::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          config: Straddle::PayoutCreateParams::Config::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
      end
      def create(
        # Body param: The amount of the payout in cents.
        amount:,
        # Body param: The currency of the payout. Only USD is supported.
        currency:,
        # Body param: An arbitrary description for the payout.
        description:,
        # Body param: Information about the device used when the customer authorized the
        # payout.
        device:,
        # Body param: Unique identifier for the payout in your database. This value must
        # be unique across all payouts.
        external_id:,
        # Body param: Value of the `paykey` used for the payout.
        paykey:,
        # Body param: The desired date on which the payout should be occur. For payouts,
        # this means the date you want the funds to be sent from your bank account.
        payment_date:,
        # Body param:
        config: nil,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the payout in a structured format.
        metadata: nil,
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

      # Update the details of a payout prior to processing. The status of the payout
      # must be `created`, `scheduled`, or `on_hold`.
      sig do
        params(
          id: String,
          amount: Integer,
          description: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
      end
      def update(
        # Path param:
        id,
        # Body param: The amount of the payout in cents.
        amount:,
        # Body param: An arbitrary description for the payout.
        description:,
        # Body param: The desired date on which the payment should be occur. For payouts,
        # this means the date you want the funds to be sent from your bank account.
        payment_date:,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the payout in a structured format.
        metadata: nil,
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

      # Cancel a payout to prevent it from being processed. The status of the payout
      # must be `created`, `scheduled`, or `on_hold`.
      sig do
        params(
          id: String,
          reason: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
      end
      def cancel(
        # Path param:
        id,
        # Body param: Details about why the payout status was updated.
        reason:,
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

      # Retrieves the details of an existing payout. Supply the unique payout `id` to
      # retrieve the corresponding payout information.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
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

      # Hold a payout to prevent it from being processed. The status of the payout must
      # be `created`, `scheduled`, or `on_hold`.
      sig do
        params(
          id: String,
          reason: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
      end
      def hold(
        # Path param:
        id,
        # Body param: Details about why the payout status was updated.
        reason:,
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

      # Release a payout from a `hold` status to allow it to be rescheduled for
      # processing.
      sig do
        params(
          id: String,
          reason: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutV1)
      end
      def release(
        # Path param:
        id,
        # Body param: Details about why the payout status was updated.
        reason:,
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

      # Get a payout by id.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::Models::PayoutUnmaskResponse)
      end
      def unmask(
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
