# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      # @see Straddle::Resources::Paykeys::Review#get
      class ReviewGetResponse < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data]
        required :data, -> { Straddle::Models::Paykeys::ReviewGetResponse::Data }

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
        #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::ResponseType]
        required :response_type, enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Paykeys::ReviewGetResponse} for more details.
        #
        #   @param data [Straddle::Models::Paykeys::ReviewGetResponse::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Paykeys::ReviewGetResponse#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute paykey_details
          #
          #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails]
          required :paykey_details, -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails }

          # @!attribute verification_details
          #
          #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails, nil]
          optional :verification_details,
                   -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails }

          # @!method initialize(paykey_details:, verification_details: nil)
          #   @param paykey_details [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails]
          #   @param verification_details [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails]

          # @see Straddle::Models::Paykeys::ReviewGetResponse::Data#paykey_details
          class PaykeyDetails < Straddle::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the paykey.
            #
            #   @return [String]
            required :id, String

            # @!attribute config
            #
            #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config]
            required :config, -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config }

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
            #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source]
            required :source, enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source }

            # @!attribute status
            #
            #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status]
            required :status, enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status }

            # @!attribute updated_at
            #   Timestamp of the most recent update to the paykey.
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute balance
            #
            #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance, nil]
            optional :balance, -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance }

            # @!attribute bank_data
            #
            #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData, nil]
            optional :bank_data, -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData }

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
            #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails, nil]
            optional :status_details,
                     -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails }

            # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, external_id: nil, institution_name: nil, metadata: nil, status_details: nil)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails} for more
            #   details.
            #
            #   @param id [String] Unique identifier for the paykey.
            #
            #   @param config [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config]
            #
            #   @param created_at [Time] Timestamp of when the paykey was created.
            #
            #   @param label [String] Human-readable label used to represent this paykey in a UI.
            #
            #   @param paykey [String] The tokenized paykey value. This value is used to create payments and should be
            #
            #   @param source [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source]
            #
            #   @param status [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status]
            #
            #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
            #
            #   @param balance [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance]
            #
            #   @param bank_data [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData]
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
            #   @param status_details [Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails]

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#config
            class Config < Straddle::Internal::Type::BaseModel
              # @!attribute processing_method
              #
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod, nil]
              optional :processing_method,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod }

              # @!attribute sandbox_outcome
              #
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome, nil]
              optional :sandbox_outcome,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome }

              # @!method initialize(processing_method: nil, sandbox_outcome: nil)
              #   @param processing_method [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod]
              #   @param sandbox_outcome [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome]

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config#processing_method
              module ProcessingMethod
                extend Straddle::Internal::Type::Enum

                INLINE = :inline
                BACKGROUND = :background
                SKIP = :skip

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config#sandbox_outcome
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

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#source
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

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#status
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

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#balance
            class Balance < Straddle::Internal::Type::BaseModel
              # @!attribute status
              #
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status]
              required :status,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status }

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
              #   @param status [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status]
              #
              #   @param account_balance [Integer, nil] Account Balance when last retrieved
              #
              #   @param updated_at [Time, nil] Last time account balance was updated.

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance#status
              module Status
                extend Straddle::Internal::Type::Enum

                PENDING = :pending
                COMPLETED = :completed
                FAILED = :failed

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#bank_data
            class BankData < Straddle::Internal::Type::BaseModel
              # @!attribute account_number
              #   Bank account number. This value is masked by default for security reasons. Use
              #   the /unmask endpoint to access the unmasked value.
              #
              #   @return [String]
              required :account_number, String

              # @!attribute account_type
              #
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType]
              required :account_type,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType }

              # @!attribute routing_number
              #   The routing number of the bank account.
              #
              #   @return [String]
              required :routing_number, String

              # @!method initialize(account_number:, account_type:, routing_number:)
              #   Some parameter documentations has been truncated, see
              #   {Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData}
              #   for more details.
              #
              #   @param account_number [String] Bank account number. This value is masked by default for security reasons. Use t
              #
              #   @param account_type [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType]
              #
              #   @param routing_number [String] The routing number of the bank account.

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData#account_type
              module AccountType
                extend Straddle::Internal::Type::Enum

                CHECKING = :checking
                SAVINGS = :savings

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails#status_details
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
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason]
              required :reason,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason }

              # @!attribute source
              #
              #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source]
              required :source,
                       enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source }

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
              #   @param reason [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason]
              #
              #   @param source [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source]
              #
              #   @param code [String, nil] The status code if applicable.

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails#reason
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

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails#source
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

          # @see Straddle::Models::Paykeys::ReviewGetResponse::Data#verification_details
          class VerificationDetails < Straddle::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the verification details.
            #
            #   @return [String]
            required :id, String

            # @!attribute breakdown
            #
            #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown]
            required :breakdown,
                     -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown }

            # @!attribute created_at
            #   Timestamp of when the verification was initiated.
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute decision
            #
            #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision]
            required :decision,
                     enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision }

            # @!attribute messages
            #   Dictionary of all messages from the paykey verification process.
            #
            #   @return [Hash{Symbol=>String}]
            required :messages, Straddle::Internal::Type::HashOf[String]

            # @!attribute updated_at
            #   Timestamp of the most recent update to the verification details.
            #
            #   @return [Time]
            required :updated_at, Time

            # @!method initialize(id:, breakdown:, created_at:, decision:, messages:, updated_at:)
            #   @param id [String] Unique identifier for the verification details.
            #
            #   @param breakdown [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown]
            #
            #   @param created_at [Time] Timestamp of when the verification was initiated.
            #
            #   @param decision [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision]
            #
            #   @param messages [Hash{Symbol=>String}] Dictionary of all messages from the paykey verification process.
            #
            #   @param updated_at [Time] Timestamp of the most recent update to the verification details.

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails#breakdown
            class Breakdown < Straddle::Internal::Type::BaseModel
              # @!attribute account_validation
              #
              #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation, nil]
              optional :account_validation,
                       -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation }

              # @!attribute name_match
              #
              #   @return [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch, nil]
              optional :name_match,
                       -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch }

              # @!method initialize(account_validation: nil, name_match: nil)
              #   @param account_validation [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation]
              #   @param name_match [Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch]

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown#account_validation
              class AccountValidation < Straddle::Internal::Type::BaseModel
                # @!attribute codes
                #
                #   @return [Array<String>]
                required :codes, Straddle::Internal::Type::ArrayOf[String]

                # @!attribute decision
                #
                #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision]
                required :decision,
                         enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision }

                # @!attribute reason
                #
                #   @return [String, nil]
                optional :reason, String, nil?: true

                # @!method initialize(codes:, decision:, reason: nil)
                #   @param codes [Array<String>]
                #   @param decision [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision]
                #   @param reason [String, nil]

                # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation#decision
                module Decision
                  extend Straddle::Internal::Type::Enum

                  UNKNOWN = :unknown
                  ACCEPT = :accept
                  REJECT = :reject
                  REVIEW = :review

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown#name_match
              class NameMatch < Straddle::Internal::Type::BaseModel
                # @!attribute codes
                #
                #   @return [Array<String>]
                required :codes, Straddle::Internal::Type::ArrayOf[String]

                # @!attribute decision
                #
                #   @return [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision]
                required :decision,
                         enum: -> { Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision }

                # @!attribute correlation_score
                #
                #   @return [Float, nil]
                optional :correlation_score, Float, nil?: true

                # @!attribute customer_name
                #
                #   @return [String, nil]
                optional :customer_name, String, nil?: true

                # @!attribute matched_name
                #
                #   @return [String, nil]
                optional :matched_name, String, nil?: true

                # @!attribute names_on_account
                #
                #   @return [Array<String>, nil]
                optional :names_on_account, Straddle::Internal::Type::ArrayOf[String], nil?: true

                # @!attribute reason
                #
                #   @return [String, nil]
                optional :reason, String, nil?: true

                # @!method initialize(codes:, decision:, correlation_score: nil, customer_name: nil, matched_name: nil, names_on_account: nil, reason: nil)
                #   @param codes [Array<String>]
                #   @param decision [Symbol, Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision]
                #   @param correlation_score [Float, nil]
                #   @param customer_name [String, nil]
                #   @param matched_name [String, nil]
                #   @param names_on_account [Array<String>, nil]
                #   @param reason [String, nil]

                # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch#decision
                module Decision
                  extend Straddle::Internal::Type::Enum

                  UNKNOWN = :unknown
                  ACCEPT = :accept
                  REJECT = :reject
                  REVIEW = :review

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            # @see Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails#decision
            module Decision
              extend Straddle::Internal::Type::Enum

              UNKNOWN = :unknown
              ACCEPT = :accept
              REJECT = :reject
              REVIEW = :review

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
        # @see Straddle::Models::Paykeys::ReviewGetResponse#response_type
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
