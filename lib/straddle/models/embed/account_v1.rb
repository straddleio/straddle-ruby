# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Accounts#create
      class AccountV1 < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Embed::AccountV1::Data]
        required :data, -> { Straddle::Embed::AccountV1::Data }

        # @!attribute meta
        #   Metadata about the API request, including an identifier and timestamp.
        #
        #   @return [Straddle::Models::ResponseMetadata]
        required :meta, -> { Straddle::ResponseMetadata }

        # @!attribute response_type
        #   Indicates the structure of the returned content.
        #
        #   - "object" means the `data` field contains a single JSON object.
        #   - "array" means the `data` field contains an array of objects.
        #   - "error" means the `data` field contains an error object with details of the
        #     issue.
        #   - "none" means no data is returned.
        #
        #   @return [Symbol, Straddle::Models::Embed::AccountV1::ResponseType]
        required :response_type, enum: -> { Straddle::Embed::AccountV1::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::AccountV1} for more details.
        #
        #   @param data [Straddle::Models::Embed::AccountV1::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Embed::AccountV1::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Embed::AccountV1#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the account.
          #
          #   @return [String]
          required :id, String

          # @!attribute access_level
          #   The access level granted to the account. This is determined by your platform
          #   configuration. Use `standard` unless instructed otherwise by Straddle.
          #
          #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::AccessLevel]
          required :access_level, enum: -> { Straddle::Embed::AccountV1::Data::AccessLevel }

          # @!attribute organization_id
          #   The unique identifier of the organization this account belongs to.
          #
          #   @return [String]
          required :organization_id, String

          # @!attribute status
          #   The current status of the account (e.g., 'active', 'inactive', 'pending').
          #
          #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::Status]
          required :status, enum: -> { Straddle::Embed::AccountV1::Data::Status }

          # @!attribute status_detail
          #
          #   @return [Straddle::Models::Embed::AccountV1::Data::StatusDetail]
          required :status_detail, -> { Straddle::Embed::AccountV1::Data::StatusDetail }

          # @!attribute type
          #   The type of account (e.g., 'individual', 'business').
          #
          #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::Type]
          required :type, enum: -> { Straddle::Embed::AccountV1::Data::Type }

          # @!attribute business_profile
          #
          #   @return [Straddle::Models::Embed::BusinessProfileV1, nil]
          optional :business_profile, -> { Straddle::Embed::BusinessProfileV1 }

          # @!attribute capabilities
          #
          #   @return [Straddle::Models::Embed::AccountV1::Data::Capabilities, nil]
          optional :capabilities, -> { Straddle::Embed::AccountV1::Data::Capabilities }

          # @!attribute created_at
          #   Timestamp of when the account was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time, nil?: true

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

          # @!attribute settings
          #
          #   @return [Straddle::Models::Embed::AccountV1::Data::Settings, nil]
          optional :settings, -> { Straddle::Embed::AccountV1::Data::Settings }

          # @!attribute terms_of_service
          #
          #   @return [Straddle::Models::Embed::TermsOfServiceV1, nil]
          optional :terms_of_service, -> { Straddle::Embed::TermsOfServiceV1 }

          # @!attribute updated_at
          #   Timestamp of the most recent update to the account.
          #
          #   @return [Time, nil]
          optional :updated_at, Time, nil?: true

          # @!method initialize(id:, access_level:, organization_id:, status:, status_detail:, type:, business_profile: nil, capabilities: nil, created_at: nil, external_id: nil, metadata: nil, settings: nil, terms_of_service: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::AccountV1::Data} for more details.
          #
          #   @param id [String] Unique identifier for the account.
          #
          #   @param access_level [Symbol, Straddle::Models::Embed::AccountV1::Data::AccessLevel] The access level granted to the account. This is determined by your platform con
          #
          #   @param organization_id [String] The unique identifier of the organization this account belongs to.
          #
          #   @param status [Symbol, Straddle::Models::Embed::AccountV1::Data::Status] The current status of the account (e.g., 'active', 'inactive', 'pending').
          #
          #   @param status_detail [Straddle::Models::Embed::AccountV1::Data::StatusDetail]
          #
          #   @param type [Symbol, Straddle::Models::Embed::AccountV1::Data::Type] The type of account (e.g., 'individual', 'business').
          #
          #   @param business_profile [Straddle::Models::Embed::BusinessProfileV1]
          #
          #   @param capabilities [Straddle::Models::Embed::AccountV1::Data::Capabilities]
          #
          #   @param created_at [Time, nil] Timestamp of when the account was created.
          #
          #   @param external_id [String, nil] Unique identifier for the account in your database, used for cross-referencing b
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
          #
          #   @param settings [Straddle::Models::Embed::AccountV1::Data::Settings]
          #
          #   @param terms_of_service [Straddle::Models::Embed::TermsOfServiceV1]
          #
          #   @param updated_at [Time, nil] Timestamp of the most recent update to the account.

          # The access level granted to the account. This is determined by your platform
          # configuration. Use `standard` unless instructed otherwise by Straddle.
          #
          # @see Straddle::Models::Embed::AccountV1::Data#access_level
          module AccessLevel
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            MANAGED = :managed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The current status of the account (e.g., 'active', 'inactive', 'pending').
          #
          # @see Straddle::Models::Embed::AccountV1::Data#status
          module Status
            extend Straddle::Internal::Type::Enum

            CREATED = :created
            ONBOARDING = :onboarding
            ACTIVE = :active
            REJECTED = :rejected
            INACTIVE = :inactive
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Embed::AccountV1::Data#status_detail
          class StatusDetail < Straddle::Internal::Type::BaseModel
            # @!attribute code
            #   A machine-readable code for the specific status, useful for programmatic
            #   handling.
            #
            #   @return [String]
            required :code, String

            # @!attribute message
            #   A human-readable message describing the current status.
            #
            #   @return [String]
            required :message, String

            # @!attribute reason
            #   A machine-readable identifier for the specific status, useful for programmatic
            #   handling.
            #
            #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::StatusDetail::Reason]
            required :reason, enum: -> { Straddle::Embed::AccountV1::Data::StatusDetail::Reason }

            # @!attribute source
            #   Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
            #   This helps in tracking the cause of status updates.
            #
            #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::StatusDetail::Source]
            required :source, enum: -> { Straddle::Embed::AccountV1::Data::StatusDetail::Source }

            # @!method initialize(code:, message:, reason:, source:)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::AccountV1::Data::StatusDetail} for more details.
            #
            #   @param code [String] A machine-readable code for the specific status, useful for programmatic handlin
            #
            #   @param message [String] A human-readable message describing the current status.
            #
            #   @param reason [Symbol, Straddle::Models::Embed::AccountV1::Data::StatusDetail::Reason] A machine-readable identifier for the specific status, useful for programmatic h
            #
            #   @param source [Symbol, Straddle::Models::Embed::AccountV1::Data::StatusDetail::Source] Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).

            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            #
            # @see Straddle::Models::Embed::AccountV1::Data::StatusDetail#reason
            module Reason
              extend Straddle::Internal::Type::Enum

              UNVERIFIED = :unverified
              IN_REVIEW = :in_review
              PENDING = :pending
              STUCK = :stuck
              VERIFIED = :verified
              FAILED_VERIFICATION = :failed_verification
              DISABLED = :disabled
              TERMINATED = :terminated
              NEW = :new
              UNKNOWN = :unknown

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
            # This helps in tracking the cause of status updates.
            #
            # @see Straddle::Models::Embed::AccountV1::Data::StatusDetail#source
            module Source
              extend Straddle::Internal::Type::Enum

              WATCHTOWER = :watchtower

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of account (e.g., 'individual', 'business').
          #
          # @see Straddle::Models::Embed::AccountV1::Data#type
          module Type
            extend Straddle::Internal::Type::Enum

            BUSINESS = :business
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Embed::AccountV1::Data#capabilities
          class Capabilities < Straddle::Internal::Type::BaseModel
            # @!attribute consent_types
            #
            #   @return [Straddle::Models::Embed::AccountV1::Data::Capabilities::ConsentTypes]
            required :consent_types, -> { Straddle::Embed::AccountV1::Data::Capabilities::ConsentTypes }

            # @!attribute customer_types
            #
            #   @return [Straddle::Models::Embed::AccountV1::Data::Capabilities::CustomerTypes]
            required :customer_types, -> { Straddle::Embed::AccountV1::Data::Capabilities::CustomerTypes }

            # @!attribute payment_types
            #
            #   @return [Straddle::Models::Embed::AccountV1::Data::Capabilities::PaymentTypes]
            required :payment_types, -> { Straddle::Embed::AccountV1::Data::Capabilities::PaymentTypes }

            # @!method initialize(consent_types:, customer_types:, payment_types:)
            #   @param consent_types [Straddle::Models::Embed::AccountV1::Data::Capabilities::ConsentTypes]
            #   @param customer_types [Straddle::Models::Embed::AccountV1::Data::Capabilities::CustomerTypes]
            #   @param payment_types [Straddle::Models::Embed::AccountV1::Data::Capabilities::PaymentTypes]

            # @see Straddle::Models::Embed::AccountV1::Data::Capabilities#consent_types
            class ConsentTypes < Straddle::Internal::Type::BaseModel
              # @!attribute internet
              #   Whether the internet payment authorization capability is enabled for the
              #   account.
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :internet, -> { Straddle::Embed::CapabilityV1 }

              # @!attribute signed_agreement
              #   Whether the signed agreement payment authorization capability is enabled for the
              #   account.
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :signed_agreement, -> { Straddle::Embed::CapabilityV1 }

              # @!method initialize(internet:, signed_agreement:)
              #   Some parameter documentations has been truncated, see
              #   {Straddle::Models::Embed::AccountV1::Data::Capabilities::ConsentTypes} for more
              #   details.
              #
              #   @param internet [Straddle::Models::Embed::CapabilityV1] Whether the internet payment authorization capability is enabled for the account
              #
              #   @param signed_agreement [Straddle::Models::Embed::CapabilityV1] Whether the signed agreement payment authorization capability is enabled for the
            end

            # @see Straddle::Models::Embed::AccountV1::Data::Capabilities#customer_types
            class CustomerTypes < Straddle::Internal::Type::BaseModel
              # @!attribute businesses
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :businesses, -> { Straddle::Embed::CapabilityV1 }

              # @!attribute individuals
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :individuals, -> { Straddle::Embed::CapabilityV1 }

              # @!method initialize(businesses:, individuals:)
              #   @param businesses [Straddle::Models::Embed::CapabilityV1]
              #   @param individuals [Straddle::Models::Embed::CapabilityV1]
            end

            # @see Straddle::Models::Embed::AccountV1::Data::Capabilities#payment_types
            class PaymentTypes < Straddle::Internal::Type::BaseModel
              # @!attribute charges
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :charges, -> { Straddle::Embed::CapabilityV1 }

              # @!attribute payouts
              #
              #   @return [Straddle::Models::Embed::CapabilityV1]
              required :payouts, -> { Straddle::Embed::CapabilityV1 }

              # @!method initialize(charges:, payouts:)
              #   @param charges [Straddle::Models::Embed::CapabilityV1]
              #   @param payouts [Straddle::Models::Embed::CapabilityV1]
            end
          end

          # @see Straddle::Models::Embed::AccountV1::Data#settings
          class Settings < Straddle::Internal::Type::BaseModel
            # @!attribute charges
            #
            #   @return [Straddle::Models::Embed::AccountV1::Data::Settings::Charges]
            required :charges, -> { Straddle::Embed::AccountV1::Data::Settings::Charges }

            # @!attribute payouts
            #
            #   @return [Straddle::Models::Embed::AccountV1::Data::Settings::Payouts]
            required :payouts, -> { Straddle::Embed::AccountV1::Data::Settings::Payouts }

            # @!method initialize(charges:, payouts:)
            #   @param charges [Straddle::Models::Embed::AccountV1::Data::Settings::Charges]
            #   @param payouts [Straddle::Models::Embed::AccountV1::Data::Settings::Payouts]

            # @see Straddle::Models::Embed::AccountV1::Data::Settings#charges
            class Charges < Straddle::Internal::Type::BaseModel
              # @!attribute daily_amount
              #   The maximum dollar amount of charges in a calendar day.
              #
              #   @return [Integer]
              required :daily_amount, Integer

              # @!attribute funding_time
              #   The amount of time it takes for a charge to be funded. This value is defined by
              #   Straddle.
              #
              #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::Settings::Charges::FundingTime]
              required :funding_time,
                       enum: -> {
                         Straddle::Embed::AccountV1::Data::Settings::Charges::FundingTime
                       }

              # @!attribute linked_bank_account_id
              #   The unique identifier of the linked bank account associated with charges. This
              #   value is defined by Straddle.
              #
              #   @return [String]
              required :linked_bank_account_id, String

              # @!attribute max_amount
              #   The maximum amount of a single charge.
              #
              #   @return [Integer]
              required :max_amount, Integer

              # @!attribute monthly_amount
              #   The maximum dollar amount of charges in a calendar month.
              #
              #   @return [Integer]
              required :monthly_amount, Integer

              # @!attribute monthly_count
              #   The maximum number of charges in a calendar month.
              #
              #   @return [Integer]
              required :monthly_count, Integer

              # @!method initialize(daily_amount:, funding_time:, linked_bank_account_id:, max_amount:, monthly_amount:, monthly_count:)
              #   Some parameter documentations has been truncated, see
              #   {Straddle::Models::Embed::AccountV1::Data::Settings::Charges} for more details.
              #
              #   @param daily_amount [Integer] The maximum dollar amount of charges in a calendar day.
              #
              #   @param funding_time [Symbol, Straddle::Models::Embed::AccountV1::Data::Settings::Charges::FundingTime] The amount of time it takes for a charge to be funded. This value is defined by
              #
              #   @param linked_bank_account_id [String] The unique identifier of the linked bank account associated with charges. This v
              #
              #   @param max_amount [Integer] The maximum amount of a single charge.
              #
              #   @param monthly_amount [Integer] The maximum dollar amount of charges in a calendar month.
              #
              #   @param monthly_count [Integer] The maximum number of charges in a calendar month.

              # The amount of time it takes for a charge to be funded. This value is defined by
              # Straddle.
              #
              # @see Straddle::Models::Embed::AccountV1::Data::Settings::Charges#funding_time
              module FundingTime
                extend Straddle::Internal::Type::Enum

                IMMEDIATE = :immediate
                NEXT_DAY = :next_day
                ONE_DAY = :one_day
                TWO_DAY = :two_day
                THREE_DAY = :three_day
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Straddle::Models::Embed::AccountV1::Data::Settings#payouts
            class Payouts < Straddle::Internal::Type::BaseModel
              # @!attribute daily_amount
              #   The maximum dollar amount of payouts in a day.
              #
              #   @return [Integer]
              required :daily_amount, Integer

              # @!attribute funding_time
              #   The amount of time it takes for a payout to be funded. This value is defined by
              #   Straddle.
              #
              #   @return [Symbol, Straddle::Models::Embed::AccountV1::Data::Settings::Payouts::FundingTime]
              required :funding_time,
                       enum: -> {
                         Straddle::Embed::AccountV1::Data::Settings::Payouts::FundingTime
                       }

              # @!attribute linked_bank_account_id
              #   The unique identifier of the linked bank account to use for payouts.
              #
              #   @return [String]
              required :linked_bank_account_id, String

              # @!attribute max_amount
              #   The maximum amount of a single payout.
              #
              #   @return [Integer]
              required :max_amount, Integer

              # @!attribute monthly_amount
              #   The maximum dollar amount of payouts in a month.
              #
              #   @return [Integer]
              required :monthly_amount, Integer

              # @!attribute monthly_count
              #   The maximum number of payouts in a month.
              #
              #   @return [Integer]
              required :monthly_count, Integer

              # @!method initialize(daily_amount:, funding_time:, linked_bank_account_id:, max_amount:, monthly_amount:, monthly_count:)
              #   Some parameter documentations has been truncated, see
              #   {Straddle::Models::Embed::AccountV1::Data::Settings::Payouts} for more details.
              #
              #   @param daily_amount [Integer] The maximum dollar amount of payouts in a day.
              #
              #   @param funding_time [Symbol, Straddle::Models::Embed::AccountV1::Data::Settings::Payouts::FundingTime] The amount of time it takes for a payout to be funded. This value is defined by
              #
              #   @param linked_bank_account_id [String] The unique identifier of the linked bank account to use for payouts.
              #
              #   @param max_amount [Integer] The maximum amount of a single payout.
              #
              #   @param monthly_amount [Integer] The maximum dollar amount of payouts in a month.
              #
              #   @param monthly_count [Integer] The maximum number of payouts in a month.

              # The amount of time it takes for a payout to be funded. This value is defined by
              # Straddle.
              #
              # @see Straddle::Models::Embed::AccountV1::Data::Settings::Payouts#funding_time
              module FundingTime
                extend Straddle::Internal::Type::Enum

                IMMEDIATE = :immediate
                NEXT_DAY = :next_day
                ONE_DAY = :one_day
                TWO_DAY = :two_day
                THREE_DAY = :three_day
                UNKNOWN = :unknown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        #
        # @see Straddle::Models::Embed::AccountV1#response_type
        module ResponseType
          extend Straddle::Internal::Type::Enum

          OBJECT = :object
          ARRAY = :array
          ERROR = :error
          NONE = :none

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
