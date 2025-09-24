# frozen_string_literal: true

module Straddle
  module Models
    class PaykeySummaryPagedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Straddle::Models::PaykeySummaryPagedV1::Data>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::PaykeySummaryPagedV1::Data] }

      # @!attribute meta
      #
      #   @return [Straddle::Models::PaykeySummaryPagedV1::Meta]
      required :meta, -> { Straddle::PaykeySummaryPagedV1::Meta }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::ResponseType]
      required :response_type, enum: -> { Straddle::PaykeySummaryPagedV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaykeySummaryPagedV1} for more details.
      #
      #   @param data [Array<Straddle::Models::PaykeySummaryPagedV1::Data>]
      #
      #   @param meta [Straddle::Models::PaykeySummaryPagedV1::Meta]
      #
      #   @param response_type [Symbol, Straddle::Models::PaykeySummaryPagedV1::ResponseType] Indicates the structure of the returned content.

      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the paykey.
        #
        #   @return [String]
        required :id, String

        # @!attribute config
        #
        #   @return [Straddle::Models::PaykeySummaryPagedV1::Data::Config]
        required :config, -> { Straddle::PaykeySummaryPagedV1::Data::Config }

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
        #   The tokenized paykey value. This value is used to create payments and should be
        #   stored securely.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute source
        #
        #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Source]
        required :source, enum: -> { Straddle::PaykeySummaryPagedV1::Data::Source }

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Status]
        required :status, enum: -> { Straddle::PaykeySummaryPagedV1::Data::Status }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the paykey.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute bank_data
        #
        #   @return [Straddle::Models::PaykeySummaryPagedV1::Data::BankData, nil]
        optional :bank_data, -> { Straddle::PaykeySummaryPagedV1::Data::BankData }

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

        # @!attribute status_details
        #
        #   @return [Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::PaykeySummaryPagedV1::Data::StatusDetails }

        # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, updated_at:, bank_data: nil, customer_id: nil, expires_at: nil, institution_name: nil, status_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::PaykeySummaryPagedV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the paykey.
        #
        #   @param config [Straddle::Models::PaykeySummaryPagedV1::Data::Config]
        #
        #   @param created_at [Time] Timestamp of when the paykey was created.
        #
        #   @param label [String] Human-readable label that combines the bank name and masked account number to he
        #
        #   @param paykey [String] The tokenized paykey value. This value is used to create payments and should be
        #
        #   @param source [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Source]
        #
        #   @param status [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Status]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
        #
        #   @param bank_data [Straddle::Models::PaykeySummaryPagedV1::Data::BankData]
        #
        #   @param customer_id [String, nil] Unique identifier of the related customer object.
        #
        #   @param expires_at [Time, nil] Expiration date and time of the paykey, if applicable.
        #
        #   @param institution_name [String, nil] Name of the financial institution.
        #
        #   @param status_details [Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails]

        # @see Straddle::Models::PaykeySummaryPagedV1::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute sandbox_outcome
          #
          #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome }

          # @!method initialize(sandbox_outcome: nil)
          #   @param sandbox_outcome [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::Config::SandboxOutcome]

          # @see Straddle::Models::PaykeySummaryPagedV1::Data::Config#sandbox_outcome
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            ACTIVE = :active
            REJECTED = :rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PaykeySummaryPagedV1::Data#source
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

        # @see Straddle::Models::PaykeySummaryPagedV1::Data#status
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

        # @see Straddle::Models::PaykeySummaryPagedV1::Data#bank_data
        class BankData < Straddle::Internal::Type::BaseModel
          # @!attribute account_number
          #   Bank account number. This value is masked by default for security reasons. Use
          #   the /unmask endpoint to access the unmasked value.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_type
          #
          #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::BankData::AccountType]
          required :account_type, enum: -> { Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType }

          # @!attribute routing_number
          #   The routing number of the bank account.
          #
          #   @return [String]
          required :routing_number, String

          # @!method initialize(account_number:, account_type:, routing_number:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PaykeySummaryPagedV1::Data::BankData} for more details.
          #
          #   @param account_number [String] Bank account number. This value is masked by default for security reasons. Use t
          #
          #   @param account_type [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::BankData::AccountType]
          #
          #   @param routing_number [String] The routing number of the bank account.

          # @see Straddle::Models::PaykeySummaryPagedV1::Data::BankData#account_type
          module AccountType
            extend Straddle::Internal::Type::Enum

            CHECKING = :checking
            SAVINGS = :savings

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PaykeySummaryPagedV1::Data#status_details
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
          #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason }

          # @!attribute source
          #   Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          #   This helps in tracking the cause of status updates.
          #
          #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails::Source]
          required :source, enum: -> { Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails} for more details.
          #
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the current status.
          #
          #   @param reason [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails::Reason] A machine-readable identifier for the specific status, useful for programmatic h
          #
          #   @param source [Symbol, Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails::Source] Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          #
          #   @param code [String, nil] The status code if applicable.

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          #
          # @see Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails#reason
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
          # @see Straddle::Models::PaykeySummaryPagedV1::Data::StatusDetails#source
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

      # @see Straddle::Models::PaykeySummaryPagedV1#meta
      class Meta < Straddle::Internal::Type::BaseModel
        # @!attribute api_request_id
        #   Unique identifier for this API request, useful for troubleshooting.
        #
        #   @return [String]
        required :api_request_id, String

        # @!attribute api_request_timestamp
        #   Timestamp for this API request, useful for troubleshooting.
        #
        #   @return [Time]
        required :api_request_timestamp, Time

        # @!attribute max_page_size
        #   Maximum allowed page size for this endpoint.
        #
        #   @return [Integer]
        required :max_page_size, Integer

        # @!attribute page_number
        #   Page number for paginated results.
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   Number of items per page in this response.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute sort_by
        #   The field that the results were sorted by.
        #
        #   @return [String]
        required :sort_by, String

        # @!attribute sort_order
        #
        #   @return [Symbol, Straddle::Models::PaykeySummaryPagedV1::Meta::SortOrder]
        required :sort_order, enum: -> { Straddle::PaykeySummaryPagedV1::Meta::SortOrder }

        # @!attribute total_items
        #
        #   @return [Integer]
        required :total_items, Integer

        # @!attribute total_pages
        #   The number of pages available.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!method initialize(api_request_id:, api_request_timestamp:, max_page_size:, page_number:, page_size:, sort_by:, sort_order:, total_items:, total_pages:)
        #   @param api_request_id [String] Unique identifier for this API request, useful for troubleshooting.
        #
        #   @param api_request_timestamp [Time] Timestamp for this API request, useful for troubleshooting.
        #
        #   @param max_page_size [Integer] Maximum allowed page size for this endpoint.
        #
        #   @param page_number [Integer] Page number for paginated results.
        #
        #   @param page_size [Integer] Number of items per page in this response.
        #
        #   @param sort_by [String] The field that the results were sorted by.
        #
        #   @param sort_order [Symbol, Straddle::Models::PaykeySummaryPagedV1::Meta::SortOrder]
        #
        #   @param total_items [Integer]
        #
        #   @param total_pages [Integer] The number of pages available.

        # @see Straddle::Models::PaykeySummaryPagedV1::Meta#sort_order
        module SortOrder
          extend Straddle::Internal::Type::Enum

          ASC = :asc
          DESC = :desc

          # @!method self.values
          #   @return [Array<Symbol>]
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
      # @see Straddle::Models::PaykeySummaryPagedV1#response_type
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
