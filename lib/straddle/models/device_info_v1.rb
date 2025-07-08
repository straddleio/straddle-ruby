# frozen_string_literal: true

module Straddle
  module Models
    class DeviceInfoV1 < Straddle::Internal::Type::BaseModel
      # @!attribute ip_address
      #   The IP address of the device used when the customer authorized the charge or
      #   payout. Use `0.0.0.0` to represent an offline consent interaction.
      #
      #   @return [String]
      required :ip_address, String

      # @!method initialize(ip_address:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::DeviceInfoV1} for more details.
      #
      #   @param ip_address [String] The IP address of the device used when the customer authorized the charge or pay
    end
  end
end
