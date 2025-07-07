# frozen_string_literal: true

module Straddle
  module Models
    class PaykeyDetailsV1 < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the paykey.
      #
      #   @return [String]
      required :id, String

      # @!attribute customer_id
      #   Unique identifier for the customer associated with the paykey.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute label
      #   Human-readable label that combines the bank name and masked account number to
      #   help easility represent this paykey in a UI
      #
      #   @return [String]
      required :label, String

      # @!attribute balance
      #   The most recent balance of the bank account associated with the paykey in
      #   dollars.
      #
      #   @return [Integer, nil]
      optional :balance, Integer, nil?: true

      # @!method initialize(id:, customer_id:, label:, balance: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaykeyDetailsV1} for more details.
      #
      #   @param id [String] Unique identifier for the paykey.
      #
      #   @param customer_id [String] Unique identifier for the customer associated with the paykey.
      #
      #   @param label [String] Human-readable label that combines the bank name and masked account number to he
      #
      #   @param balance [Integer, nil] The most recent balance of the bank account associated with the paykey in dollar
    end
  end
end
