# frozen_string_literal: true

module Straddle
  module Models
    class CustomerAddressV1 < Straddle::Internal::Type::BaseModel
      # @!attribute address1
      #   Primary address line (e.g., street, PO Box).
      #
      #   @return [String]
      required :address1, String

      # @!attribute city
      #   City, district, suburb, town, or village.
      #
      #   @return [String]
      required :city, String

      # @!attribute state
      #   Two-letter state code.
      #
      #   @return [String]
      required :state, String

      # @!attribute zip
      #   Zip or postal code.
      #
      #   @return [String]
      required :zip, String

      # @!attribute address2
      #   Secondary address line (e.g., apartment, suite, unit, or building).
      #
      #   @return [String, nil]
      optional :address2, String, nil?: true

      # @!method initialize(address1:, city:, state:, zip:, address2: nil)
      #   An object containing the customer's address. This is optional, but if provided,
      #   all required fields must be present.
      #
      #   @param address1 [String] Primary address line (e.g., street, PO Box).
      #
      #   @param city [String] City, district, suburb, town, or village.
      #
      #   @param state [String] Two-letter state code.
      #
      #   @param zip [String] Zip or postal code.
      #
      #   @param address2 [String, nil] Secondary address line (e.g., apartment, suite, unit, or building).
    end
  end
end
