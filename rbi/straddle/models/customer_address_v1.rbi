# typed: strong

module Straddle
  module Models
    class CustomerAddressV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerAddressV1, Straddle::Internal::AnyHash)
        end

      # Primary address line (e.g., street, PO Box).
      sig { returns(String) }
      attr_accessor :address1

      # City, district, suburb, town, or village.
      sig { returns(String) }
      attr_accessor :city

      # Two-letter state code.
      sig { returns(String) }
      attr_accessor :state

      # Zip or postal code.
      sig { returns(String) }
      attr_accessor :zip

      # Secondary address line (e.g., apartment, suite, unit, or building).
      sig { returns(T.nilable(String)) }
      attr_accessor :address2

      # An object containing the customer's address. This is optional, but if provided,
      # all required fields must be present.
      sig do
        params(
          address1: String,
          city: String,
          state: String,
          zip: String,
          address2: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Primary address line (e.g., street, PO Box).
        address1:,
        # City, district, suburb, town, or village.
        city:,
        # Two-letter state code.
        state:,
        # Zip or postal code.
        zip:,
        # Secondary address line (e.g., apartment, suite, unit, or building).
        address2: nil
      )
      end

      sig do
        override.returns(
          {
            address1: String,
            city: String,
            state: String,
            zip: String,
            address2: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
