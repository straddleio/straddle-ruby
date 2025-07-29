# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Paykeys#review
    class PaykeyReviewParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::PaykeyReviewParams::Status]
      required :status, enum: -> { Straddle::PaykeyReviewParams::Status }

      # @!attribute correlation_id
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(status:, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param status [Symbol, Straddle::Models::PaykeyReviewParams::Status]
      #   @param correlation_id [String]
      #   @param request_id [String]
      #   @param straddle_account_id [String]
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
