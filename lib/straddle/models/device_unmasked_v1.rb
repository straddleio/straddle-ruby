# frozen_string_literal: true

module Straddle
  module Models
    class DeviceUnmaskedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute ip_address
      #   The customer's IP address at the time of profile creation. Use `0.0.0.0` to
      #   represent an offline customer registration.
      #
      #   @return [String]
      required :ip_address, String

      # @!method initialize(ip_address:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::DeviceUnmaskedV1} for more details.
      #
      #   @param ip_address [String] The customer's IP address at the time of profile creation. Use `0.0.0.0` to repr
    end
  end
end
