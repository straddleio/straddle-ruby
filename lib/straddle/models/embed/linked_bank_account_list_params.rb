# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::LinkedBankAccounts#list
      class LinkedBankAccountListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute account_id
        #   The unique identifier of the related account.
        #
        #   @return [String, nil]
        optional :account_id, String

        # @!attribute level
        #
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Level, nil]
        optional :level, enum: -> { Straddle::Embed::LinkedBankAccountListParams::Level }

        # @!attribute page_number
        #   Results page number. Starts at page 1.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Page size. Max value: 1000
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute purpose
        #   The purpose of the linked bank accounts to return. Possible values: 'charges',
        #   'payouts', 'billing'.
        #
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Purpose, nil]
        optional :purpose, enum: -> { Straddle::Embed::LinkedBankAccountListParams::Purpose }

        # @!attribute sort_by
        #   Sort By.
        #
        #   @return [String, nil]
        optional :sort_by, String

        # @!attribute sort_order
        #   Sort Order.
        #
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::SortOrder, nil]
        optional :sort_order, enum: -> { Straddle::Embed::LinkedBankAccountListParams::SortOrder }

        # @!attribute status
        #   The status of the linked bank accounts to return. Possible values: 'created',
        #   'onboarding', 'active', 'inactive', 'rejected'.
        #
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Status, nil]
        optional :status, enum: -> { Straddle::Embed::LinkedBankAccountListParams::Status }

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(account_id: nil, level: nil, page_number: nil, page_size: nil, purpose: nil, sort_by: nil, sort_order: nil, status: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::LinkedBankAccountListParams} for more details.
        #
        #   @param account_id [String] The unique identifier of the related account.
        #
        #   @param level [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Level]
        #
        #   @param page_number [Integer] Results page number. Starts at page 1.
        #
        #   @param page_size [Integer] Page size. Max value: 1000
        #
        #   @param purpose [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Purpose] The purpose of the linked bank accounts to return. Possible values: 'charges', '
        #
        #   @param sort_by [String] Sort By.
        #
        #   @param sort_order [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::SortOrder] Sort Order.
        #
        #   @param status [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Status] The status of the linked bank accounts to return. Possible values: 'created', 'o
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        module Level
          extend Straddle::Internal::Type::Enum

          ACCOUNT = :account
          PLATFORM = :platform

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The purpose of the linked bank accounts to return. Possible values: 'charges',
        # 'payouts', 'billing'.
        module Purpose
          extend Straddle::Internal::Type::Enum

          CHARGES = :charges
          PAYOUTS = :payouts
          BILLING = :billing

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort Order.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the linked bank accounts to return. Possible values: 'created',
        # 'onboarding', 'active', 'inactive', 'rejected'.
        module Status
          extend Straddle::Internal::Type::Enum

          CREATED = :created
          ONBOARDING = :onboarding
          ACTIVE = :active
          REJECTED = :rejected
          INACTIVE = :inactive
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
