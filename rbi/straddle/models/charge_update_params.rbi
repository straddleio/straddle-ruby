# typed: strong

module Straddle
  module Models
    class ChargeUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::ChargeUpdateParams, Straddle::Internal::AnyHash)
        end

      # The amount of the charge in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # An arbitrary description for the charge.
      sig { returns(String) }
      attr_accessor :description

      # The desired date on which the payment should be occur. For charges, this means
      # the date you want the customer to be debited on.
      sig { returns(Date) }
      attr_accessor :payment_date

      # Up to 20 additional user-defined key-value pairs. Useful for storing additional
      # information about the charge in a structured format.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          amount: Integer,
          description: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of the charge in cents.
        amount:,
        # An arbitrary description for the charge.
        description:,
        # The desired date on which the payment should be occur. For charges, this means
        # the date you want the customer to be debited on.
        payment_date:,
        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the charge in a structured format.
        metadata: nil,
        correlation_id: nil,
        idempotency_key: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            description: String,
            payment_date: Date,
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
