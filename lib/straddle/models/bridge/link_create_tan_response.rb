# frozen_string_literal: true

module Straddle
  module Models
    module Bridge
      # @see Straddle::Resources::Bridge::Link#create_tan
      class LinkCreateTanResponse < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Bridge::LinkCreateTanResponse::Data]
        required :data, -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data }

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
        #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::ResponseType]
        required :response_type, enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Bridge::LinkCreateTanResponse} for more details.
        #
        #   @param data [Straddle::Models::Bridge::LinkCreateTanResponse::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Bridge::LinkCreateTanResponse#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the paykey.
          #
          #   @return [String]
          required :id, String

          # @!attribute config
          #
          #   @return [Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config]
          required :config, -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config }

          # @!attribute created_at
          #   Timestamp of when the paykey was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute label
          #   Human-readable label that combines the bank name and masked account number to
          #   help easility represent this paykey in a UI
          #
          #   @return [String]
          required :label, String

          # @!attribute paykey
          #   The tokenized paykey value. This token is used to create payments and should be
          #   stored securely.
          #
          #   @return [String]
          required :paykey, String

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Source]
          required :source, enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Source }

          # @!attribute status
          #
          #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Status]
          required :status, enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Status }

          # @!attribute updated_at
          #   Timestamp of the most recent update to the paykey.
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute balance
          #
          #   @return [Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance, nil]
          optional :balance, -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance }

          # @!attribute bank_data
          #
          #   @return [Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData, nil]
          optional :bank_data, -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData }

          # @!attribute customer_id
          #   Unique identifier of the related customer object.
          #
          #   @return [String, nil]
          optional :customer_id, String, nil?: true

          # @!attribute expires_at
          #   Expiration date and time of the paykey, if applicable.
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!attribute external_id
          #   Unique identifier for the paykey in your database, used for cross-referencing
          #   between Straddle and your systems.
          #
          #   @return [String, nil]
          optional :external_id, String, nil?: true

          # @!attribute institution_name
          #   Name of the financial institution.
          #
          #   @return [String, nil]
          optional :institution_name, String, nil?: true

          # @!attribute metadata
          #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
          #   information about the paykey in a structured format.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

          # @!attribute status_details
          #
          #   @return [Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails, nil]
          optional :status_details, -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails }

          # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, external_id: nil, institution_name: nil, metadata: nil, status_details: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Bridge::LinkCreateTanResponse::Data} for more details.
          #
          #   @param id [String] Unique identifier for the paykey.
          #
          #   @param config [Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config]
          #
          #   @param created_at [Time] Timestamp of when the paykey was created.
          #
          #   @param label [String] Human-readable label that combines the bank name and masked account number to he
          #
          #   @param paykey [String] The tokenized paykey value. This token is used to create payments and should be
          #
          #   @param source [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Source]
          #
          #   @param status [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Status]
          #
          #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
          #
          #   @param balance [Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance]
          #
          #   @param bank_data [Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData]
          #
          #   @param customer_id [String, nil] Unique identifier of the related customer object.
          #
          #   @param expires_at [Time, nil] Expiration date and time of the paykey, if applicable.
          #
          #   @param external_id [String, nil] Unique identifier for the paykey in your database, used for cross-referencing be
          #
          #   @param institution_name [String, nil] Name of the financial institution.
          #
          #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
          #
          #   @param status_details [Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails]

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#config
          class Config < Straddle::Internal::Type::BaseModel
            # @!attribute processing_method
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::ProcessingMethod, nil]
            optional :processing_method,
                     enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::ProcessingMethod }

            # @!attribute sandbox_outcome
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::SandboxOutcome, nil]
            optional :sandbox_outcome,
                     enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::SandboxOutcome }

            # @!method initialize(processing_method: nil, sandbox_outcome: nil)
            #   @param processing_method [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::ProcessingMethod]
            #   @param sandbox_outcome [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config::SandboxOutcome]

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config#processing_method
            module ProcessingMethod
              extend Straddle::Internal::Type::Enum

              INLINE = :inline
              BACKGROUND = :background
              SKIP = :skip

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::Config#sandbox_outcome
            module SandboxOutcome
              extend Straddle::Internal::Type::Enum

              STANDARD = :standard
              ACTIVE = :active
              REJECTED = :rejected
              REVIEW = :review

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#source
          module Source
            extend Straddle::Internal::Type::Enum

            BANK_ACCOUNT = :bank_account
            STRADDLE = :straddle
            MX = :mx
            PLAID = :plaid
            TAN = :tan
            QUILTT = :quiltt

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#status
          module Status
            extend Straddle::Internal::Type::Enum

            PENDING = :pending
            ACTIVE = :active
            INACTIVE = :inactive
            REJECTED = :rejected
            REVIEW = :review

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#balance
          class Balance < Straddle::Internal::Type::BaseModel
            # @!attribute status
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance::Status]
            required :status, enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance::Status }

            # @!attribute account_balance
            #   Account Balance when last retrieved
            #
            #   @return [Integer, nil]
            optional :account_balance, Integer, nil?: true

            # @!attribute updated_at
            #   Last time account balance was updated.
            #
            #   @return [Time, nil]
            optional :updated_at, Time, nil?: true

            # @!method initialize(status:, account_balance: nil, updated_at: nil)
            #   @param status [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance::Status]
            #
            #   @param account_balance [Integer, nil] Account Balance when last retrieved
            #
            #   @param updated_at [Time, nil] Last time account balance was updated.

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::Balance#status
            module Status
              extend Straddle::Internal::Type::Enum

              PENDING = :pending
              COMPLETED = :completed
              FAILED = :failed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#bank_data
          class BankData < Straddle::Internal::Type::BaseModel
            # @!attribute account_number
            #   Bank account number. This value is masked by default for security reasons. Use
            #   the /unmask endpoint to access the unmasked value.
            #
            #   @return [String]
            required :account_number, String

            # @!attribute account_type
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData::AccountType]
            required :account_type,
                     enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData::AccountType }

            # @!attribute routing_number
            #   The routing number of the bank account.
            #
            #   @return [String]
            required :routing_number, String

            # @!method initialize(account_number:, account_type:, routing_number:)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData} for more
            #   details.
            #
            #   @param account_number [String] Bank account number. This value is masked by default for security reasons. Use t
            #
            #   @param account_type [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData::AccountType]
            #
            #   @param routing_number [String] The routing number of the bank account.

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::BankData#account_type
            module AccountType
              extend Straddle::Internal::Type::Enum

              CHECKING = :checking
              SAVINGS = :savings

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data#status_details
          class StatusDetails < Straddle::Internal::Type::BaseModel
            # @!attribute changed_at
            #   The time the status change occurred.
            #
            #   @return [Time]
            required :changed_at, Time

            # @!attribute message
            #   A human-readable description of the current status.
            #
            #   @return [String]
            required :message, String

            # @!attribute reason
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Reason]
            required :reason,
                     enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Reason }

            # @!attribute source
            #
            #   @return [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Source]
            required :source,
                     enum: -> { Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Source }

            # @!attribute code
            #   The status code if applicable.
            #
            #   @return [String, nil]
            optional :code, String, nil?: true

            # @!method initialize(changed_at:, message:, reason:, source:, code: nil)
            #   @param changed_at [Time] The time the status change occurred.
            #
            #   @param message [String] A human-readable description of the current status.
            #
            #   @param reason [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Reason]
            #
            #   @param source [Symbol, Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails::Source]
            #
            #   @param code [String, nil] The status code if applicable.

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails#reason
            module Reason
              extend Straddle::Internal::Type::Enum

              INSUFFICIENT_FUNDS = :insufficient_funds
              CLOSED_BANK_ACCOUNT = :closed_bank_account
              INVALID_BANK_ACCOUNT = :invalid_bank_account
              INVALID_ROUTING = :invalid_routing
              DISPUTED = :disputed
              PAYMENT_STOPPED = :payment_stopped
              OWNER_DECEASED = :owner_deceased
              FROZEN_BANK_ACCOUNT = :frozen_bank_account
              RISK_REVIEW = :risk_review
              FRAUDULENT = :fraudulent
              DUPLICATE_ENTRY = :duplicate_entry
              INVALID_PAYKEY = :invalid_paykey
              PAYMENT_BLOCKED = :payment_blocked
              AMOUNT_TOO_LARGE = :amount_too_large
              TOO_MANY_ATTEMPTS = :too_many_attempts
              INTERNAL_SYSTEM_ERROR = :internal_system_error
              USER_REQUEST = :user_request
              OK = :ok
              OTHER_NETWORK_RETURN = :other_network_return
              PAYOUT_REFUSED = :payout_refused

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Straddle::Models::Bridge::LinkCreateTanResponse::Data::StatusDetails#source
            module Source
              extend Straddle::Internal::Type::Enum

              WATCHTOWER = :watchtower
              BANK_DECLINE = :bank_decline
              CUSTOMER_DISPUTE = :customer_dispute
              USER_ACTION = :user_action
              SYSTEM = :system

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
        # @see Straddle::Models::Bridge::LinkCreateTanResponse#response_type
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
