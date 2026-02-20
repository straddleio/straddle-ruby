# typed: strong

module Straddle
  module Models
    module Embed
      class AddressV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::AddressV1, Straddle::Internal::AnyHash)
          end

        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # Primary address line (e.g., street, PO Box).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # Postal or ZIP code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # Two-letter state code.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The country of the address, in ISO 3166-1 alpha-2 format.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # Secondary address line (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The address object is optional. If provided, it must be a valid address.
        sig do
          params(
            city: T.nilable(String),
            line1: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            country: T.nilable(String),
            line2: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # City, district, suburb, town, or village.
          city:,
          # Primary address line (e.g., street, PO Box).
          line1:,
          # Postal or ZIP code.
          postal_code:,
          # Two-letter state code.
          state:,
          # The country of the address, in ISO 3166-1 alpha-2 format.
          country: nil,
          # Secondary address line (e.g., apartment, suite, unit, or building).
          line2: nil
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              line1: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String),
              country: T.nilable(String),
              line2: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
