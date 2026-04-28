# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Accounts#list
      class AccountListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Results page number. Starts at page 1. Default value: 1
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Page size. Default value: 100. Max value: 1000
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute search_text
        #
        #   @return [String, nil]
        optional :search_text, String

        # @!attribute sort_by
        #   Sort By. Default value: 'id'.
        #
        #   @return [String, nil]
        optional :sort_by, String

        # @!attribute sort_order
        #   Sort Order. Default value: 'asc'.
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountListParams::SortOrder, nil]
        optional :sort_order, enum: -> { Straddle::Embed::AccountListParams::SortOrder }

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountListParams::Status, nil]
        optional :status, enum: -> { Straddle::Embed::AccountListParams::Status }

        # @!attribute type
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountListParams::Type, nil]
        optional :type, enum: -> { Straddle::Embed::AccountListParams::Type }

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   @param page_number [Integer] Results page number. Starts at page 1. Default value: 1
        #
        #   @param page_size [Integer] Page size. Default value: 100. Max value: 1000
        #
        #   @param search_text [String]
        #
        #   @param sort_by [String] Sort By. Default value: 'id'.
        #
        #   @param sort_order [Symbol, Straddle::Models::Embed::AccountListParams::SortOrder] Sort Order. Default value: 'asc'.
        #
        #   @param status [Symbol, Straddle::Models::Embed::AccountListParams::Status]
        #
        #   @param type [Symbol, Straddle::Models::Embed::AccountListParams::Type]
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        # Sort Order. Default value: 'asc'.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Status
          extend Straddle::Internal::Type::Enum

          CREATED = :created
          ONBOARDING = :onboarding
          ACTIVE = :active
          REJECTED = :rejected
          INACTIVE = :inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Type
          extend Straddle::Internal::Type::Enum

          BUSINESS = :business

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
