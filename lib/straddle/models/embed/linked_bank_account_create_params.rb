# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::LinkedBankAccounts#create
      class LinkedBankAccountCreateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute account_id
        #   The unique identifier of the Straddle account to associate this bank account
        #   with.
        #
        #   @return [String, nil]
        required :account_id, String, nil?: true

        # @!attribute bank_account
        #
        #   @return [Straddle::Models::Embed::LinkedBankAccountCreateParams::BankAccount]
        required :bank_account, -> { Straddle::Embed::LinkedBankAccountCreateParams::BankAccount }

        # @!attribute description
        #   Optional description for the bank account.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #   information about the linked bank account in a structured format.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!attribute platform_id
        #   The unique identifier of the Straddle Platform to associate this bank account
        #   with.
        #
        #   @return [String, nil]
        optional :platform_id, String, nil?: true

        # @!attribute purposes
        #   The purposes for the linked bank account.
        #
        #   @return [Array<Symbol, Straddle::Models::Embed::LinkedBankAccountCreateParams::Purpose>, nil]
        optional :purposes,
                 -> {
                   Straddle::Internal::Type::ArrayOf[enum: Straddle::Embed::LinkedBankAccountCreateParams::Purpose]
                 },
                 nil?: true

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(account_id:, bank_account:, description: nil, metadata: nil, platform_id: nil, purposes: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::LinkedBankAccountCreateParams} for more details.
        #
        #   @param account_id [String, nil] The unique identifier of the Straddle account to associate this bank account wit
        #
        #   @param bank_account [Straddle::Models::Embed::LinkedBankAccountCreateParams::BankAccount]
        #
        #   @param description [String, nil] Optional description for the bank account.
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #
        #   @param platform_id [String, nil] The unique identifier of the Straddle Platform to associate this bank account wi
        #
        #   @param purposes [Array<Symbol, Straddle::Models::Embed::LinkedBankAccountCreateParams::Purpose>, nil] The purposes for the linked bank account.
        #
        #   @param correlation_id [String]
        #
        #   @param idempotency_key [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        class BankAccount < Straddle::Internal::Type::BaseModel
          # @!attribute account_holder
          #   The name of the account holder as it appears on the bank account. Typically,
          #   this is the legal name of the business associated with the account.
          #
          #   @return [String]
          required :account_holder, String

          # @!attribute account_number
          #   The bank account number.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute routing_number
          #   The routing number of the bank account.
          #
          #   @return [String]
          required :routing_number, String

          # @!method initialize(account_holder:, account_number:, routing_number:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::LinkedBankAccountCreateParams::BankAccount} for more
          #   details.
          #
          #   @param account_holder [String] The name of the account holder as it appears on the bank account. Typically, thi
          #
          #   @param account_number [String] The bank account number.
          #
          #   @param routing_number [String] The routing number of the bank account.
        end

        module Purpose
          extend Straddle::Internal::Type::Enum

          CHARGES = :charges
          PAYOUTS = :payouts
          BILLING = :billing

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
