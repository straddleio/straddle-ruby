# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Paykeys#cancel
    class PaykeyV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::PaykeyV1::Data]
      required :data, -> { Straddle::PaykeyV1::Data }

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
      #   @return [Symbol, Straddle::Models::PaykeyV1::ResponseType]
      required :response_type, enum: -> { Straddle::PaykeyV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaykeyV1} for more details.
      #
      #   @param data [Straddle::Models::PaykeyV1::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::PaykeyV1::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::PaykeyV1#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the paykey.
        #
        #   @return [String]
        required :id, String

        # @!attribute config
        #
        #   @return [Straddle::Models::PaykeyV1::Data::Config]
        required :config, -> { Straddle::PaykeyV1::Data::Config }

        # @!attribute created_at
        #   Timestamp of when the paykey was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute label
        #   Human-readable label used to represent this paykey in a UI.
        #
        #   @return [String]
        required :label, String

        # @!attribute paykey
        #   The tokenized paykey value. This value is used to create payments and should be
        #   stored securely.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute source
        #
        #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Source]
        required :source, enum: -> { Straddle::PaykeyV1::Data::Source }

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Status]
        required :status, enum: -> { Straddle::PaykeyV1::Data::Status }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the paykey.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute balance
        #
        #   @return [Straddle::Models::PaykeyV1::Data::Balance, nil]
        optional :balance, -> { Straddle::PaykeyV1::Data::Balance }

        # @!attribute bank_data
        #
        #   @return [Straddle::Models::PaykeyV1::Data::BankData, nil]
        optional :bank_data, -> { Straddle::PaykeyV1::Data::BankData }

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
        #   @return [Straddle::Models::PaykeyV1::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::PaykeyV1::Data::StatusDetails }

        # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, institution_name: nil, metadata: nil, status_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::PaykeyV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the paykey.
        #
        #   @param config [Straddle::Models::PaykeyV1::Data::Config]
        #
        #   @param created_at [Time] Timestamp of when the paykey was created.
        #
        #   @param label [String] Human-readable label used to represent this paykey in a UI.
        #
        #   @param paykey [String] The tokenized paykey value. This value is used to create payments and should be
        #
        #   @param source [Symbol, Straddle::Models::PaykeyV1::Data::Source]
        #
        #   @param status [Symbol, Straddle::Models::PaykeyV1::Data::Status]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
        #
        #   @param balance [Straddle::Models::PaykeyV1::Data::Balance]
        #
        #   @param bank_data [Straddle::Models::PaykeyV1::Data::BankData]
        #
        #   @param customer_id [String, nil] Unique identifier of the related customer object.
        #
        #   @param expires_at [Time, nil] Expiration date and time of the paykey, if applicable.
        #
        #   @param institution_name [String, nil] Name of the financial institution.
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #
        #   @param status_details [Straddle::Models::PaykeyV1::Data::StatusDetails]

        # @see Straddle::Models::PaykeyV1::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute sandbox_outcome
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::PaykeyV1::Data::Config::SandboxOutcome }

          # @!method initialize(sandbox_outcome: nil)
          #   @param sandbox_outcome [Symbol, Straddle::Models::PaykeyV1::Data::Config::SandboxOutcome]

          # @see Straddle::Models::PaykeyV1::Data::Config#sandbox_outcome
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            ACTIVE = :active
            REJECTED = :rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PaykeyV1::Data#source
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

        # @see Straddle::Models::PaykeyV1::Data#status
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

        # @see Straddle::Models::PaykeyV1::Data#balance
        class Balance < Straddle::Internal::Type::BaseModel
          # @!attribute status
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Balance::Status]
          required :status, enum: -> { Straddle::PaykeyV1::Data::Balance::Status }

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
          #   @param status [Symbol, Straddle::Models::PaykeyV1::Data::Balance::Status]
          #
          #   @param account_balance [Integer, nil] Account Balance when last retrieved
          #
          #   @param updated_at [Time, nil] Last time account balance was updated.

          # @see Straddle::Models::PaykeyV1::Data::Balance#status
          module Status
            extend Straddle::Internal::Type::Enum

            PENDING = :pending
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PaykeyV1::Data#bank_data
        class BankData < Straddle::Internal::Type::BaseModel
          # @!attribute account_number
          #   Bank account number. This value is masked by default for security reasons. Use
          #   the /unmask endpoint to access the unmasked value.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_type
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::BankData::AccountType]
          required :account_type, enum: -> { Straddle::PaykeyV1::Data::BankData::AccountType }

          # @!attribute routing_number
          #   The routing number of the bank account.
          #
          #   @return [String]
          required :routing_number, String

          # @!method initialize(account_number:, account_type:, routing_number:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PaykeyV1::Data::BankData} for more details.
          #
          #   @param account_number [String] Bank account number. This value is masked by default for security reasons. Use t
          #
          #   @param account_type [Symbol, Straddle::Models::PaykeyV1::Data::BankData::AccountType]
          #
          #   @param routing_number [String] The routing number of the bank account.

          # @see Straddle::Models::PaykeyV1::Data::BankData#account_type
          module AccountType
            extend Straddle::Internal::Type::Enum

            CHECKING = :checking
            SAVINGS = :savings

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PaykeyV1::Data#status_details
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
          #   A machine-readable identifier for the specific status, useful for programmatic
          #   handling.
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::PaykeyV1::Data::StatusDetails::Reason }

          # @!attribute source
          #   Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          #   This helps in tracking the cause of status updates.
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Source]
          required :source, enum: -> { Straddle::PaykeyV1::Data::StatusDetails::Source }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PaykeyV1::Data::StatusDetails} for more details.
          #
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the current status.
          #
          #   @param reason [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Reason] A machine-readable identifier for the specific status, useful for programmatic h
          #
          #   @param source [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Source] Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          #
          #   @param code [String, nil] The status code if applicable.

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          #
          # @see Straddle::Models::PaykeyV1::Data::StatusDetails#reason
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

          # Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          # This helps in tracking the cause of status updates.
          #
          # @see Straddle::Models::PaykeyV1::Data::StatusDetails#source
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
      # @see Straddle::Models::PaykeyV1#response_type
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
