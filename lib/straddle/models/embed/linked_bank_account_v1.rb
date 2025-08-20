# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::LinkedBankAccounts#create
      class LinkedBankAccountV1 < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Embed::LinkedBankAccountV1::Data]
        required :data, -> { Straddle::Embed::LinkedBankAccountV1::Data }

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
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::ResponseType]
        required :response_type, enum: -> { Straddle::Embed::LinkedBankAccountV1::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::LinkedBankAccountV1} for more details.
        #
        #   @param data [Straddle::Models::Embed::LinkedBankAccountV1::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Embed::LinkedBankAccountV1#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the linked bank account.
          #
          #   @return [String]
          required :id, String

          # @!attribute account_id
          #   The unique identifier of the Straddle account related to this bank account.
          #
          #   @return [String, nil]
          required :account_id, String, nil?: true

          # @!attribute bank_account
          #
          #   @return [Straddle::Models::Embed::LinkedBankAccountV1::Data::BankAccount]
          required :bank_account, -> { Straddle::Embed::LinkedBankAccountV1::Data::BankAccount }

          # @!attribute created_at
          #   Timestamp of when the bank account object was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute purposes
          #   The purposes for the linked bank account.
          #
          #   @return [Array<Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::Purpose>]
          required :purposes,
                   -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::Embed::LinkedBankAccountV1::Data::Purpose] }

          # @!attribute status
          #   The current status of the linked bank account.
          #
          #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::Status]
          required :status, enum: -> { Straddle::Embed::LinkedBankAccountV1::Data::Status }

          # @!attribute status_detail
          #
          #   @return [Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail]
          required :status_detail, -> { Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail }

          # @!attribute updated_at
          #   Timestamp of the most recent update to the linked bank account.
          #
          #   @return [Time]
          required :updated_at, Time

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
          #   The unique identifier of the Straddle Platform relatd to this bank account.
          #
          #   @return [String, nil]
          optional :platform_id, String, nil?: true

          # @!method initialize(id:, account_id:, bank_account:, created_at:, purposes:, status:, status_detail:, updated_at:, description: nil, metadata: nil, platform_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::LinkedBankAccountV1::Data} for more details.
          #
          #   @param id [String] Unique identifier for the linked bank account.
          #
          #   @param account_id [String, nil] The unique identifier of the Straddle account related to this bank account.
          #
          #   @param bank_account [Straddle::Models::Embed::LinkedBankAccountV1::Data::BankAccount]
          #
          #   @param created_at [Time] Timestamp of when the bank account object was created.
          #
          #   @param purposes [Array<Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::Purpose>] The purposes for the linked bank account.
          #
          #   @param status [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::Status] The current status of the linked bank account.
          #
          #   @param status_detail [Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail]
          #
          #   @param updated_at [Time] Timestamp of the most recent update to the linked bank account.
          #
          #   @param description [String, nil] Optional description for the bank account.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
          #
          #   @param platform_id [String, nil] The unique identifier of the Straddle Platform relatd to this bank account.

          # @see Straddle::Models::Embed::LinkedBankAccountV1::Data#bank_account
          class BankAccount < Straddle::Internal::Type::BaseModel
            # @!attribute account_holder
            #
            #   @return [String]
            required :account_holder, String

            # @!attribute account_mask
            #
            #   @return [String]
            required :account_mask, String

            # @!attribute institution_name
            #
            #   @return [String]
            required :institution_name, String

            # @!attribute routing_number
            #
            #   @return [String]
            required :routing_number, String

            # @!method initialize(account_holder:, account_mask:, institution_name:, routing_number:)
            #   @param account_holder [String]
            #   @param account_mask [String]
            #   @param institution_name [String]
            #   @param routing_number [String]
          end

          module Purpose
            extend Straddle::Internal::Type::Enum

            CHARGES = :charges
            PAYOUTS = :payouts
            BILLING = :billing

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The current status of the linked bank account.
          #
          # @see Straddle::Models::Embed::LinkedBankAccountV1::Data#status
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

          # @see Straddle::Models::Embed::LinkedBankAccountV1::Data#status_detail
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
            #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason]
            required :reason, enum: -> { Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason }

            # @!attribute source
            #   Identifies the origin of the status change (e.g., `watchtower`). This helps in
            #   tracking the cause of status updates.
            #
            #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail::Source]
            required :source, enum: -> { Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source }

            # @!method initialize(code:, message:, reason:, source:)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail} for more
            #   details.
            #
            #   @param code [String] A machine-readable code for the specific status, useful for programmatic handlin
            #
            #   @param message [String] A human-readable message describing the current status.
            #
            #   @param reason [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason] A machine-readable identifier for the specific status, useful for programmatic h
            #
            #   @param source [Symbol, Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail::Source] Identifies the origin of the status change (e.g., `watchtower`). This helps in t

            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            #
            # @see Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail#reason
            module Reason
              extend Straddle::Internal::Type::Enum

              UNVERIFIED = :unverified
              IN_REVIEW = :in_review
              PENDING = :pending
              STUCK = :stuck
              VERIFIED = :verified
              FAILED_VERIFICATION = :failed_verification
              DISABLED = :disabled
              NEW = :new

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            #
            # @see Straddle::Models::Embed::LinkedBankAccountV1::Data::StatusDetail#source
            module Source
              extend Straddle::Internal::Type::Enum

              WATCHTOWER = :watchtower

              # @!method self.values
              #   @return [Array<Symbol>]
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
        # @see Straddle::Models::Embed::LinkedBankAccountV1#response_type
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
