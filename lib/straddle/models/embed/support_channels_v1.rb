# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class SupportChannelsV1 < Straddle::Internal::Type::BaseModel
        # @!attribute email
        #   The email address for customer support inquiries.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute phone
        #   The phone number for customer support.
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute url
        #   The URL of the business's customer support page or contact form.
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        # @!method initialize(email: nil, phone: nil, url: nil)
        #   @param email [String, nil] The email address for customer support inquiries.
        #
        #   @param phone [String, nil] The phone number for customer support.
        #
        #   @param url [String, nil] The URL of the business's customer support page or contact form.
      end
    end
  end
end
