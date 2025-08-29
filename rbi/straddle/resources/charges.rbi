# typed: strong

module Straddle
  module Resources
    class Charges
      # Use charges to collect money from a customer for the sale of goods or services.
      sig do
        params(
          amount: Integer,
          config: Straddle::ChargeCreateParams::Config::OrHash,
          consent_type: Straddle::ChargeCreateParams::ConsentType::OrSymbol,
          currency: String,
          description: String,
          device: Straddle::DeviceInfoV1::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
      end
      def create(
        # Body param: The amount of the charge in cents.
        amount:,
        # Body param:
        config:,
        # Body param: The channel or mechanism through which the payment was authorized.
        # Use `internet` for payments made online or through a mobile app and `signed` for
        # signed agreements where there is a consent form or contract. Use `signed` for
        # PDF signatures.
        consent_type:,
        # Body param: The currency of the charge. Only USD is supported.
        currency:,
        # Body param: An arbitrary description for the charge.
        description:,
        # Body param:
        device:,
        # Body param: Unique identifier for the charge in your database. This value must
        # be unique across all charges.
        external_id:,
        # Body param: Value of the `paykey` used for the charge.
        paykey:,
        # Body param: The desired date on which the payment should be occur. For charges,
        # this means the date you want the customer to be debited on.
        payment_date:,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the charge in a structured format.
        metadata: nil,
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

      # Change the values of parameters associated with a charge prior to processing.
      # The status of the charge must be `created`, `scheduled`, or `on_hold`.
      sig do
        params(
          id: String,
          amount: Integer,
          description: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
      end
      def update(
        # Path param:
        id,
        # Body param: The amount of the charge in cents.
        amount:,
        # Body param: An arbitrary description for the charge.
        description:,
        # Body param: The desired date on which the payment should be occur. For charges,
        # this means the date you want the customer to be debited on.
        payment_date:,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the charge in a structured format.
        metadata: nil,
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

      # Cancel a charge to prevent it from being originated for processing. The status
      # of the charge must be `created`, `scheduled`, or `on_hold`.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
      end
      def cancel(
        # Path param:
        id,
        # Body param: Details about why the charge status was updated.
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

      # Retrieves the details of an existing charge. Supply the unique charge `id`, and
      # Straddle will return the corresponding charge information.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
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

      # Place a charge on hold to prevent it from being originated for processing. The
      # status of the charge must be `created` or `scheduled`.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
      end
      def hold(
        # Path param:
        id,
        # Body param: Details about why the charge status was updated.
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

      # Release a charge from an `on_hold` status to allow it to be rescheduled for
      # processing.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeV1)
      end
      def release(
        # Path param:
        id,
        # Body param: Details about why the charge status was updated.
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

      # Get a charge by id.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::Models::ChargeUnmaskResponse)
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
