# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class AddressV1 < Straddle::Internal::Type::BaseModel
        # @!attribute address1
        #   Primary address line (e.g., street, PO Box).
        #
        #   @return [String]
        required :address1, String

        # @!attribute city
        #   City, district, suburb, town, or village.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute state
        #   Two-letter state code.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

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

        # @!attribute country
        #   The country of the address, in ISO 3166-1 alpha-2 format.
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute line1
        #   Primary address line (e.g., street, PO Box).
        #
        #   @return [String, nil]
        optional :line1, String, nil?: true

        # @!attribute line2
        #   Secondary address line (e.g., apartment, suite, unit, or building).
        #
        #   @return [String, nil]
        optional :line2, String, nil?: true

        # @!attribute postal_code
        #   Postal or ZIP code.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!method initialize(address1:, city:, state:, zip:, address2: nil, country: nil, line1: nil, line2: nil, postal_code: nil)
        #   The address object is optional. If provided, it must be a valid address.
        #
        #   @param address1 [String] Primary address line (e.g., street, PO Box).
        #
        #   @param city [String, nil] City, district, suburb, town, or village.
        #
        #   @param state [String, nil] Two-letter state code.
        #
        #   @param zip [String] Zip or postal code.
        #
        #   @param address2 [String, nil] Secondary address line (e.g., apartment, suite, unit, or building).
        #
        #   @param country [String, nil] The country of the address, in ISO 3166-1 alpha-2 format.
        #
        #   @param line1 [String, nil] Primary address line (e.g., street, PO Box).
        #
        #   @param line2 [String, nil] Secondary address line (e.g., apartment, suite, unit, or building).
        #
        #   @param postal_code [String, nil] Postal or ZIP code.
      end
    end
  end
end
