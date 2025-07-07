# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class CapabilityV1 < Straddle::Internal::Type::BaseModel
        # @!attribute capability_status
        #
        #   @return [Symbol, Straddle::Models::Embed::CapabilityV1::CapabilityStatus]
        required :capability_status, enum: -> { Straddle::Embed::CapabilityV1::CapabilityStatus }

        # @!method initialize(capability_status:)
        #   @param capability_status [Symbol, Straddle::Models::Embed::CapabilityV1::CapabilityStatus]

        # @see Straddle::Models::Embed::CapabilityV1#capability_status
        module CapabilityStatus
          extend Straddle::Internal::Type::Enum

          ACTIVE = :active
          INACTIVE = :inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
