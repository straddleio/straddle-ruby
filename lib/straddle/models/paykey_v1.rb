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

        # @!attribute unblock_eligible
        #   Indicates whether this paykey is eligible for client-initiated unblocking. Only
        #   true for paykeys blocked due to R29 returns that have not been previously
        #   unblocked.
        #
        #   @return [Boolean]
        required :unblock_eligible, Straddle::Internal::Type::Boolean

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
        #   @return [Straddle::Models::PaykeyV1::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::PaykeyV1::Data::StatusDetails }

        # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, unblock_eligible:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, external_id: nil, institution_name: nil, metadata: nil, status_details: nil)
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
        #   @param unblock_eligible [Boolean] Indicates whether this paykey is eligible for client-initiated unblocking. Only
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
        #   @param external_id [String, nil] Unique identifier for the paykey in your database, used for cross-referencing be
        #
        #   @param institution_name [String, nil] Name of the financial institution.
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #
        #   @param status_details [Straddle::Models::PaykeyV1::Data::StatusDetails]

        # @see Straddle::Models::PaykeyV1::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute processing_method
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Config::ProcessingMethod, nil]
          optional :processing_method, enum: -> { Straddle::PaykeyV1::Data::Config::ProcessingMethod }

          # @!attribute sandbox_outcome
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::PaykeyV1::Data::Config::SandboxOutcome }

          # @!method initialize(processing_method: nil, sandbox_outcome: nil)
          #   @param processing_method [Symbol, Straddle::Models::PaykeyV1::Data::Config::ProcessingMethod]
          #   @param sandbox_outcome [Symbol, Straddle::Models::PaykeyV1::Data::Config::SandboxOutcome]

          # @see Straddle::Models::PaykeyV1::Data::Config#processing_method
          module ProcessingMethod
            extend Straddle::Internal::Type::Enum

            INLINE = :inline
            BACKGROUND = :background
            SKIP = :skip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::PaykeyV1::Data::Config#sandbox_outcome
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
          BLOCKED = :blocked

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
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::PaykeyV1::Data::StatusDetails::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Source]
          required :source, enum: -> { Straddle::PaykeyV1::Data::StatusDetails::Source }

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
          #   @param reason [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaykeyV1::Data::StatusDetails::Source]
          #
          #   @param code [String, nil] The status code if applicable.

          # @see Straddle::Models::PaykeyV1::Data::StatusDetails#reason
          module Reason
            extend Straddle::Internal::Type::Enum

            INSUFFICIENT_FUNDS = :insufficient_funds
            INSUFFICIENT_FUNDS_2 = :InsufficientFunds
            CLOSED_BANK_ACCOUNT = :closed_bank_account
            CLOSED_BANK_ACCOUNT_2 = :ClosedBankAccount
            INVALID_BANK_ACCOUNT = :invalid_bank_account
            INVALID_BANK_ACCOUNT_2 = :InvalidBankAccount
            INVALID_ROUTING = :invalid_routing
            INVALID_ROUTING_2 = :InvalidRouting
            DISPUTED = :disputed
            DISPUTED_2 = :Disputed
            PAYMENT_STOPPED = :payment_stopped
            PAYMENT_STOPPED_2 = :PaymentStopped
            OWNER_DECEASED = :owner_deceased
            OWNER_DECEASED_2 = :OwnerDeceased
            FROZEN_BANK_ACCOUNT = :frozen_bank_account
            FROZEN_BANK_ACCOUNT_2 = :FrozenBankAccount
            RISK_REVIEW = :risk_review
            RISK_REVIEW_2 = :RiskReview
            FRAUDULENT = :fraudulent
            FRAUDULENT_2 = :Fraudulent
            DUPLICATE_ENTRY = :duplicate_entry
            DUPLICATE_ENTRY_2 = :DuplicateEntry
            INVALID_PAYKEY = :invalid_paykey
            INVALID_PAYKEY_2 = :InvalidPaykey
            PAYMENT_BLOCKED = :payment_blocked
            PAYMENT_BLOCKED_2 = :PaymentBlocked
            AMOUNT_TOO_LARGE = :amount_too_large
            AMOUNT_TOO_LARGE_2 = :AmountTooLarge
            TOO_MANY_ATTEMPTS = :too_many_attempts
            TOO_MANY_ATTEMPTS_2 = :TooManyAttempts
            INTERNAL_SYSTEM_ERROR = :internal_system_error
            INTERNAL_SYSTEM_ERROR_2 = :InternalSystemError
            USER_REQUEST = :user_request
            USER_REQUEST_2 = :UserRequest
            OK = :ok
            OK_2 = :Ok
            OTHER_NETWORK_RETURN = :other_network_return
            OTHER_NETWORK_RETURN_2 = :OtherNetworkReturn
            PAYOUT_REFUSED = :payout_refused
            PAYOUT_REFUSED_2 = :PayoutRefused
            CANCEL_REQUEST = :cancel_request
            FAILED_VERIFICATION = :failed_verification
            REQUIRE_REVIEW = :require_review
            BLOCKED_BY_SYSTEM = :blocked_by_system
            WATCHTOWER_REVIEW = :watchtower_review

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::PaykeyV1::Data::StatusDetails#source
          module Source
            extend Straddle::Internal::Type::Enum

            WATCHTOWER = :watchtower
            WATCHTOWER_2 = :Watchtower
            BANK_DECLINE = :bank_decline
            BANK_DECLINE_2 = :BankDecline
            CUSTOMER_DISPUTE = :customer_dispute
            CUSTOMER_DISPUTE_2 = :CustomerDispute
            USER_ACTION = :user_action
            USER_ACTION_2 = :UserAction
            SYSTEM = :system
            SYSTEM_2 = :System

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
        OBJECT_2 = :Object
        ARRAY = :array
        ARRAY_2 = :Array
        ERROR = :error
        ERROR_2 = :Error
        NONE = :none
        NONE_2 = :None

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
