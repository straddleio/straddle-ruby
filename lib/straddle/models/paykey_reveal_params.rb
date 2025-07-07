# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Paykeys#reveal
    class PaykeyRevealParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

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

      # @!method initialize(correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param correlation_id [String]
      #   @param request_id [String]
      #   @param straddle_account_id [String]
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
