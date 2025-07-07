# typed: strong

module Straddle
  module Models
    class PaykeyDetailsV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyDetailsV1, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the paykey.
      sig { returns(String) }
      attr_accessor :id

      # Unique identifier for the customer associated with the paykey.
      sig { returns(String) }
      attr_accessor :customer_id

      # Human-readable label that combines the bank name and masked account number to
      # help easility represent this paykey in a UI
      sig { returns(String) }
      attr_accessor :label

      # The most recent balance of the bank account associated with the paykey in
      # dollars.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :balance

      sig do
        params(
          id: String,
          customer_id: String,
          label: String,
          balance: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the paykey.
        id:,
        # Unique identifier for the customer associated with the paykey.
        customer_id:,
        # Human-readable label that combines the bank name and masked account number to
        # help easility represent this paykey in a UI
        label:,
        # The most recent balance of the bank account associated with the paykey in
        # dollars.
        balance: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            customer_id: String,
            label: String,
            balance: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
