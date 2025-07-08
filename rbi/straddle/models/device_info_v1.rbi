# typed: strong

module Straddle
  module Models
    class DeviceInfoV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::DeviceInfoV1, Straddle::Internal::AnyHash)
        end

      # The IP address of the device used when the customer authorized the charge or
      # payout. Use `0.0.0.0` to represent an offline consent interaction.
      sig { returns(String) }
      attr_accessor :ip_address

      sig { params(ip_address: String).returns(T.attached_class) }
      def self.new(
        # The IP address of the device used when the customer authorized the charge or
        # payout. Use `0.0.0.0` to represent an offline consent interaction.
        ip_address:
      )
      end

      sig { override.returns({ ip_address: String }) }
      def to_hash
      end
    end
  end
end
