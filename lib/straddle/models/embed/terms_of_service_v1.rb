# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class TermsOfServiceV1 < Straddle::Internal::Type::BaseModel
        # @!attribute accepted_date
        #   The datetime of when the terms of service were accepted, in ISO 8601 format.
        #
        #   @return [Time]
        required :accepted_date, Time

        # @!attribute agreement_type
        #   The type or version of the agreement accepted. Use `embedded` unless your
        #   platform was specifically enabled for `direct` agreements.
        #
        #   @return [Symbol, Straddle::Models::Embed::TermsOfServiceV1::AgreementType]
        required :agreement_type, enum: -> { Straddle::Embed::TermsOfServiceV1::AgreementType }

        # @!attribute agreement_url
        #   The URL where the full text of the accepted agreement can be found.
        #
        #   @return [String, nil]
        required :agreement_url, String, nil?: true

        # @!attribute accepted_ip
        #   The IP address from which the terms of service were accepted.
        #
        #   @return [String, nil]
        optional :accepted_ip, String, nil?: true

        # @!attribute accepted_user_agent
        #   The user agent string of the browser or application used to accept the terms.
        #
        #   @return [String, nil]
        optional :accepted_user_agent, String, nil?: true

        # @!method initialize(accepted_date:, agreement_type:, agreement_url:, accepted_ip: nil, accepted_user_agent: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::TermsOfServiceV1} for more details.
        #
        #   @param accepted_date [Time] The datetime of when the terms of service were accepted, in ISO 8601 format.
        #
        #   @param agreement_type [Symbol, Straddle::Models::Embed::TermsOfServiceV1::AgreementType] The type or version of the agreement accepted. Use `embedded` unless your platfo
        #
        #   @param agreement_url [String, nil] The URL where the full text of the accepted agreement can be found.
        #
        #   @param accepted_ip [String, nil] The IP address from which the terms of service were accepted.
        #
        #   @param accepted_user_agent [String, nil] The user agent string of the browser or application used to accept the terms.

        # The type or version of the agreement accepted. Use `embedded` unless your
        # platform was specifically enabled for `direct` agreements.
        #
        # @see Straddle::Models::Embed::TermsOfServiceV1#agreement_type
        module AgreementType
          extend Straddle::Internal::Type::Enum

          EMBEDDED = :embedded
          DIRECT = :direct

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
