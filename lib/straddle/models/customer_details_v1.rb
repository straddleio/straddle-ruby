# frozen_string_literal: true

module Straddle
  module Models
    class CustomerDetailsV1 < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the customer
      #
      #   @return [String]
      required :id, String

      # @!attribute customer_type
      #   The type of customer
      #
      #   @return [Symbol, Straddle::Models::CustomerDetailsV1::CustomerType]
      required :customer_type, enum: -> { Straddle::CustomerDetailsV1::CustomerType }

      # @!attribute email
      #   The customer's email address
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   The name of the customer
      #
      #   @return [String]
      required :name, String

      # @!attribute phone
      #   The customer's phone number in E.164 format
      #
      #   @return [String]
      required :phone, String

      # @!method initialize(id:, customer_type:, email:, name:, phone:)
      #   Information about the customer associated with the charge or payout.
      #
      #   @param id [String] Unique identifier for the customer
      #
      #   @param customer_type [Symbol, Straddle::Models::CustomerDetailsV1::CustomerType] The type of customer
      #
      #   @param email [String] The customer's email address
      #
      #   @param name [String] The name of the customer
      #
      #   @param phone [String] The customer's phone number in E.164 format

      # The type of customer
      #
      # @see Straddle::Models::CustomerDetailsV1#customer_type
      module CustomerType
        extend Straddle::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
