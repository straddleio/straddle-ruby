# typed: strong

module Straddle
  module Models
    class DeviceUnmaskedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::DeviceUnmaskedV1, Straddle::Internal::AnyHash)
        end

      # The customer's IP address at the time of profile creation. Use `0.0.0.0` to
      # represent an offline customer registration.
      sig { returns(String) }
      attr_accessor :ip_address

      sig { params(ip_address: String).returns(T.attached_class) }
      def self.new(
        # The customer's IP address at the time of profile creation. Use `0.0.0.0` to
        # represent an offline customer registration.
        ip_address:
      )
      end

      sig { override.returns({ ip_address: String }) }
      def to_hash
      end
    end
  end
end
