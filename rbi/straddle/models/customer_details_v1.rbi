# typed: strong

module Straddle
  module Models
    class CustomerDetailsV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerDetailsV1, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the customer
      sig { returns(String) }
      attr_accessor :id

      # The type of customer
      sig { returns(Straddle::CustomerDetailsV1::CustomerType::TaggedSymbol) }
      attr_accessor :customer_type

      # The customer's email address
      sig { returns(String) }
      attr_accessor :email

      # The name of the customer
      sig { returns(String) }
      attr_accessor :name

      # The customer's phone number in E.164 format
      sig { returns(String) }
      attr_accessor :phone

      # Information about the customer associated with the charge or payout.
      sig do
        params(
          id: String,
          customer_type: Straddle::CustomerDetailsV1::CustomerType::OrSymbol,
          email: String,
          name: String,
          phone: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the customer
        id:,
        # The type of customer
        customer_type:,
        # The customer's email address
        email:,
        # The name of the customer
        name:,
        # The customer's phone number in E.164 format
        phone:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            customer_type:
              Straddle::CustomerDetailsV1::CustomerType::TaggedSymbol,
            email: String,
            name: String,
            phone: String
          }
        )
      end
      def to_hash
      end

      # The type of customer
      module CustomerType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::CustomerDetailsV1::CustomerType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            Straddle::CustomerDetailsV1::CustomerType::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Straddle::CustomerDetailsV1::CustomerType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::CustomerDetailsV1::CustomerType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
