# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Accounts#create
      class AccountCreateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute access_level
        #   The access level granted to the account. This is determined by your platform
        #   configuration. Use `standard` unless instructed otherwise by Straddle.
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountCreateParams::AccessLevel]
        required :access_level, enum: -> { Straddle::Embed::AccountCreateParams::AccessLevel }

        # @!attribute account_type
        #   The type of account to be created. Currently, only `business` is supported.
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountCreateParams::AccountType]
        required :account_type, enum: -> { Straddle::Embed::AccountCreateParams::AccountType }

        # @!attribute business_profile
        #
        #   @return [Straddle::Models::Embed::BusinessProfileV1]
        required :business_profile, -> { Straddle::Embed::BusinessProfileV1 }

        # @!attribute organization_id
        #   The unique identifier of the organization related to this account.
        #
        #   @return [String]
        required :organization_id, String

        # @!attribute external_id
        #   Unique identifier for the account in your database, used for cross-referencing
        #   between Straddle and your systems.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #   information about the account in a structured format.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(access_level:, account_type:, business_profile:, organization_id:, external_id: nil, metadata: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::AccountCreateParams} for more details.
        #
        #   @param access_level [Symbol, Straddle::Models::Embed::AccountCreateParams::AccessLevel] The access level granted to the account. This is determined by your platform con
        #
        #   @param account_type [Symbol, Straddle::Models::Embed::AccountCreateParams::AccountType] The type of account to be created. Currently, only `business` is supported.
        #
        #   @param business_profile [Straddle::Models::Embed::BusinessProfileV1]
        #
        #   @param organization_id [String] The unique identifier of the organization related to this account.
        #
        #   @param external_id [String, nil] Unique identifier for the account in your database, used for cross-referencing b
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

        # The access level granted to the account. This is determined by your platform
        # configuration. Use `standard` unless instructed otherwise by Straddle.
        module AccessLevel
          extend Straddle::Internal::Type::Enum

          STANDARD = :standard
          MANAGED = :managed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of account to be created. Currently, only `business` is supported.
        module AccountType
          extend Straddle::Internal::Type::Enum

          BUSINESS = :business
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
