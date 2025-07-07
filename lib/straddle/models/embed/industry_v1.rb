# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class IndustryV1 < Straddle::Internal::Type::BaseModel
        # @!attribute category
        #   The general category of the industry. Required if not providing MCC.
        #
        #   @return [String, nil]
        optional :category, String, nil?: true

        # @!attribute mcc
        #   The Merchant Category Code (MCC) that best describes the business. Optional.
        #
        #   @return [String, nil]
        optional :mcc, String, nil?: true

        # @!attribute sector
        #   The specific sector within the industry category. Required if not providing MCC.
        #
        #   @return [String, nil]
        optional :sector, String, nil?: true

        # @!method initialize(category: nil, mcc: nil, sector: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::IndustryV1} for more details.
        #
        #   @param category [String, nil] The general category of the industry. Required if not providing MCC.
        #
        #   @param mcc [String, nil] The Merchant Category Code (MCC) that best describes the business. Optional.
        #
        #   @param sector [String, nil] The specific sector within the industry category. Required if not providing MCC.
      end
    end
  end
end
