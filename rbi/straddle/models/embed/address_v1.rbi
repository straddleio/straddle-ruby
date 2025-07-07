# typed: strong

module Straddle
  module Models
    module Embed
      class AddressV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::AddressV1, Straddle::Internal::AnyHash)
          end

        # Primary address line (e.g., street, PO Box).
        sig { returns(String) }
        attr_accessor :address1

        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Two-letter state code.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # Zip or postal code.
        sig { returns(String) }
        attr_accessor :zip

        # Secondary address line (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :address2

        # The country of the address, in ISO 3166-1 alpha-2 format.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # Primary address line (e.g., street, PO Box).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # Secondary address line (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # Postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The address object is optional. If provided, it must be a valid address.
        sig do
          params(
            address1: String,
            city: T.nilable(String),
            state: T.nilable(String),
            zip: String,
            address2: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String)
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
          address2: nil,
          # The country of the address, in ISO 3166-1 alpha-2 format.
          country: nil,
          # Primary address line (e.g., street, PO Box).
          line1: nil,
          # Secondary address line (e.g., apartment, suite, unit, or building).
          line2: nil,
          # Postal or ZIP code.
          postal_code: nil
        )
        end

        sig do
          override.returns(
            {
              address1: String,
              city: T.nilable(String),
              state: T.nilable(String),
              zip: String,
              address2: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
