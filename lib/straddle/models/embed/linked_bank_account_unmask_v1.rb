# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::LinkedBankAccounts#unmask
      class LinkedBankAccountUnmaskV1 < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data]
        required :data, -> { Straddle::Embed::LinkedBankAccountUnmaskV1::Data }

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
        #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::ResponseType]
        required :response_type, enum: -> { Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::LinkedBankAccountUnmaskV1} for more details.
        #
        #   @param data [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the linked bank account.
          #
          #   @return [String]
          required :id, String

          # @!attribute account_id
          #   Unique identifier for the Straddle account related to this bank account.
          #
          #   @return [String]
          required :account_id, String

          # @!attribute bank_account
          #   The bank account details associated with the linked bank account.
          #
          #   @return [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount]
          required :bank_account, -> { Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount }

          # @!attribute created_at
          #   Timestamp of when the linked bank account was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute status
          #   The current status of the linked bank account.
          #
          #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::Status]
          required :status, enum: -> { Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status }

          # @!attribute status_detail
          #   Additional details about the current status of the linked bank account.
          #
          #   @return [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail]
          required :status_detail, -> { Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail }

          # @!attribute updated_at
          #   Timestamp of when the linked bank account was last updated.
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(id:, account_id:, bank_account:, created_at:, status:, status_detail:, updated_at:, metadata: nil)
          #   @param id [String] Unique identifier for the linked bank account.
          #
          #   @param account_id [String] Unique identifier for the Straddle account related to this bank account.
          #
          #   @param bank_account [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount] The bank account details associated with the linked bank account.
          #
          #   @param created_at [Time] Timestamp of when the linked bank account was created.
          #
          #   @param status [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::Status] The current status of the linked bank account.
          #
          #   @param status_detail [Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail] Additional details about the current status of the linked bank account.
          #
          #   @param updated_at [Time] Timestamp of when the linked bank account was last updated.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil]

          # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data#bank_account
          class BankAccount < Straddle::Internal::Type::BaseModel
            # @!attribute account_holder
            #
            #   @return [String]
            required :account_holder, String

            # @!attribute account_number
            #
            #   @return [String]
            required :account_number, String

            # @!attribute institution_name
            #
            #   @return [String]
            required :institution_name, String

            # @!attribute routing_number
            #
            #   @return [String]
            required :routing_number, String

            # @!method initialize(account_holder:, account_number:, institution_name:, routing_number:)
            #   The bank account details associated with the linked bank account.
            #
            #   @param account_holder [String]
            #   @param account_number [String]
            #   @param institution_name [String]
            #   @param routing_number [String]
          end

          # The current status of the linked bank account.
          #
          # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data#status
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

          # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data#status_detail
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
            #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason]
            required :reason,
                     enum: -> {
                       Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason
                     }

            # @!attribute source
            #   Identifies the origin of the status change (e.g., `watchtower`). This helps in
            #   tracking the cause of status updates.
            #
            #   @return [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source]
            required :source,
                     enum: -> {
                       Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source
                     }

            # @!method initialize(code:, message:, reason:, source:)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail} for
            #   more details.
            #
            #   Additional details about the current status of the linked bank account.
            #
            #   @param code [String] A machine-readable code for the specific status, useful for programmatic handlin
            #
            #   @param message [String] A human-readable message describing the current status.
            #
            #   @param reason [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason] A machine-readable identifier for the specific status, useful for programmatic h
            #
            #   @param source [Symbol, Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source] Identifies the origin of the status change (e.g., `watchtower`). This helps in t

            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            #
            # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail#reason
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
            # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail#source
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
        # @see Straddle::Models::Embed::LinkedBankAccountUnmaskV1#response_type
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
