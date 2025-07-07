# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class BusinessProfileV1 < Straddle::Internal::Type::BaseModel
        # @!attribute name
        #   The operating or trade name of the business.
        #
        #   @return [String]
        required :name, String

        # @!attribute website
        #   URL of the business's primary marketing website.
        #
        #   @return [String]
        required :website, String

        # @!attribute address
        #   The address object is optional. If provided, it must be a valid address.
        #
        #   @return [Straddle::Models::Embed::AddressV1, nil]
        optional :address, -> { Straddle::Embed::AddressV1 }, nil?: true

        # @!attribute description
        #   A brief description of the business and its products or services.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute industry
        #
        #   @return [Straddle::Models::Embed::IndustryV1, nil]
        optional :industry, -> { Straddle::Embed::IndustryV1 }

        # @!attribute legal_name
        #   The official registered name of the business.
        #
        #   @return [String, nil]
        optional :legal_name, String, nil?: true

        # @!attribute phone
        #   The primary contact phone number for the business.
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute support_channels
        #
        #   @return [Straddle::Models::Embed::SupportChannelsV1, nil]
        optional :support_channels, -> { Straddle::Embed::SupportChannelsV1 }

        # @!attribute tax_id
        #   The business's tax identification number (e.g., EIN in the US).
        #
        #   @return [String, nil]
        optional :tax_id, String, nil?: true

        # @!attribute use_case
        #   A description of how the business intends to use Straddle's services.
        #
        #   @return [String, nil]
        optional :use_case, String, nil?: true

        # @!method initialize(name:, website:, address: nil, description: nil, industry: nil, legal_name: nil, phone: nil, support_channels: nil, tax_id: nil, use_case: nil)
        #   @param name [String] The operating or trade name of the business.
        #
        #   @param website [String] URL of the business's primary marketing website.
        #
        #   @param address [Straddle::Models::Embed::AddressV1, nil] The address object is optional. If provided, it must be a valid address.
        #
        #   @param description [String, nil] A brief description of the business and its products or services.
        #
        #   @param industry [Straddle::Models::Embed::IndustryV1]
        #
        #   @param legal_name [String, nil] The official registered name of the business.
        #
        #   @param phone [String, nil] The primary contact phone number for the business.
        #
        #   @param support_channels [Straddle::Models::Embed::SupportChannelsV1]
        #
        #   @param tax_id [String, nil] The business's tax identification number (e.g., EIN in the US).
        #
        #   @param use_case [String, nil] A description of how the business intends to use Straddle's services.
      end
    end
  end
end
