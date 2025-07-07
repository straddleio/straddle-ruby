# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#create
    class PayoutV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::PayoutV1::Data]
      required :data, -> { Straddle::PayoutV1::Data }

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
      #   @return [Symbol, Straddle::Models::PayoutV1::ResponseType]
      required :response_type, enum: -> { Straddle::PayoutV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutV1} for more details.
      #
      #   @param data [Straddle::Models::PayoutV1::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::PayoutV1::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::PayoutV1#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the payout.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the payout in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute config
        #   Configuration for the payout.
        #
        #   @return [Straddle::Models::PayoutV1::Data::Config]
        required :config, -> { Straddle::PayoutV1::Data::Config }

        # @!attribute currency
        #   The currency of the payout. Only USD is supported.
        #
        #   @return [String]
        required :currency, String

        # @!attribute description
        #   An arbitrary description for the payout.
        #
        #   @return [String]
        required :description, String

        # @!attribute device
        #   Information about the device used when the customer authorized the payout.
        #
        #   @return [Straddle::Models::DeviceInfoV1]
        required :device, -> { Straddle::DeviceInfoV1 }

        # @!attribute external_id
        #   Unique identifier for the payout in your database. This value must be unique
        #   across all payouts.
        #
        #   @return [String]
        required :external_id, String

        # @!attribute funding_ids
        #   Funding Ids
        #
        #   @return [Array<String>]
        required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute paykey
        #   Value of the `paykey` used for the payout.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute payment_date
        #   The desired date on which the payment should be occur. For payouts, this means
        #   the date you want the funds to be sent from your bank account.
        #
        #   @return [Date]
        required :payment_date, Date

        # @!attribute status
        #   The current status of the payout.
        #
        #   @return [Symbol, Straddle::Models::PayoutV1::Data::Status]
        required :status, enum: -> { Straddle::PayoutV1::Data::Status }

        # @!attribute status_details
        #   Details about the current status of the payout.
        #
        #   @return [Straddle::Models::StatusDetailsV1]
        required :status_details, -> { Straddle::StatusDetailsV1 }

        # @!attribute status_history
        #   History of the status changes for the payout.
        #
        #   @return [Array<Straddle::Models::PayoutV1::Data::StatusHistory>]
        required :status_history,
                 -> { Straddle::Internal::Type::ArrayOf[Straddle::PayoutV1::Data::StatusHistory] }

        # @!attribute created_at
        #   The time the payout was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, nil?: true

        # @!attribute customer_details
        #   Information about the customer associated with the payout.
        #
        #   @return [Straddle::Models::CustomerDetailsV1, nil]
        optional :customer_details, -> { Straddle::CustomerDetailsV1 }

        # @!attribute effective_at
        #   The actual date on which the payment occurred. For payouts, this is the date the
        #   funds were sent from your bank account.
        #
        #   @return [Time, nil]
        optional :effective_at, Time, nil?: true

        # @!attribute metadata
        #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #   information about the payout in a structured format.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

        # @!attribute paykey_details
        #   Information about the paykey used for the payout.
        #
        #   @return [Straddle::Models::PaykeyDetailsV1, nil]
        optional :paykey_details, -> { Straddle::PaykeyDetailsV1 }

        # @!attribute payment_rail
        #   The payment rail used for the payout.
        #
        #   @return [Symbol, Straddle::Models::PayoutV1::Data::PaymentRail, nil]
        optional :payment_rail, enum: -> { Straddle::PayoutV1::Data::PaymentRail }

        # @!attribute processed_at
        #   The time the payout was processed by Straddle and originated to the payment
        #   rail.
        #
        #   @return [Time, nil]
        optional :processed_at, Time, nil?: true

        # @!attribute updated_at
        #   The time the payout was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, nil?: true

        # @!method initialize(id:, amount:, config:, currency:, description:, device:, external_id:, funding_ids:, paykey:, payment_date:, status:, status_details:, status_history:, created_at: nil, customer_details: nil, effective_at: nil, metadata: nil, paykey_details: nil, payment_rail: nil, processed_at: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::PayoutV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the payout.
        #
        #   @param amount [Integer] The amount of the payout in cents.
        #
        #   @param config [Straddle::Models::PayoutV1::Data::Config] Configuration for the payout.
        #
        #   @param currency [String] The currency of the payout. Only USD is supported.
        #
        #   @param description [String] An arbitrary description for the payout.
        #
        #   @param device [Straddle::Models::DeviceInfoV1] Information about the device used when the customer authorized the payout.
        #
        #   @param external_id [String] Unique identifier for the payout in your database. This value must be unique acr
        #
        #   @param funding_ids [Array<String>] Funding Ids
        #
        #   @param paykey [String] Value of the `paykey` used for the payout.
        #
        #   @param payment_date [Date] The desired date on which the payment should be occur. For payouts, this means t
        #
        #   @param status [Symbol, Straddle::Models::PayoutV1::Data::Status] The current status of the payout.
        #
        #   @param status_details [Straddle::Models::StatusDetailsV1] Details about the current status of the payout.
        #
        #   @param status_history [Array<Straddle::Models::PayoutV1::Data::StatusHistory>] History of the status changes for the payout.
        #
        #   @param created_at [Time, nil] The time the payout was created.
        #
        #   @param customer_details [Straddle::Models::CustomerDetailsV1] Information about the customer associated with the payout.
        #
        #   @param effective_at [Time, nil] The actual date on which the payment occurred. For payouts, this is the date the
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #
        #   @param paykey_details [Straddle::Models::PaykeyDetailsV1] Information about the paykey used for the payout.
        #
        #   @param payment_rail [Symbol, Straddle::Models::PayoutV1::Data::PaymentRail] The payment rail used for the payout.
        #
        #   @param processed_at [Time, nil] The time the payout was processed by Straddle and originated to the payment rail
        #
        #   @param updated_at [Time, nil] The time the payout was last updated.

        # @see Straddle::Models::PayoutV1::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute sandbox_outcome
          #   Payment will simulate processing if not Standard.
          #
          #   @return [Symbol, Straddle::Models::PayoutV1::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::PayoutV1::Data::Config::SandboxOutcome }

          # @!method initialize(sandbox_outcome: nil)
          #   Configuration for the payout.
          #
          #   @param sandbox_outcome [Symbol, Straddle::Models::PayoutV1::Data::Config::SandboxOutcome] Payment will simulate processing if not Standard.

          # Payment will simulate processing if not Standard.
          #
          # @see Straddle::Models::PayoutV1::Data::Config#sandbox_outcome
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            PAID = :paid
            ON_HOLD_DAILY_LIMIT = :on_hold_daily_limit
            CANCELLED_FOR_FRAUD_RISK = :cancelled_for_fraud_risk
            CANCELLED_FOR_BALANCE_CHECK = :cancelled_for_balance_check
            FAILED_INSUFFICIENT_FUNDS = :failed_insufficient_funds
            REVERSED_INSUFFICIENT_FUNDS = :reversed_insufficient_funds
            FAILED_CUSTOMER_DISPUTE = :failed_customer_dispute
            REVERSED_CUSTOMER_DISPUTE = :reversed_customer_dispute
            FAILED_CLOSED_BANK_ACCOUNT = :failed_closed_bank_account
            REVERSED_CLOSED_BANK_ACCOUNT = :reversed_closed_bank_account

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The current status of the payout.
        #
        # @see Straddle::Models::PayoutV1::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          CREATED = :created
          SCHEDULED = :scheduled
          FAILED = :failed
          CANCELLED = :cancelled
          ON_HOLD = :on_hold
          PENDING = :pending
          PAID = :paid
          REVERSED = :reversed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          # @!attribute changed_at
          #   The time the status change occurred.
          #
          #   @return [Time]
          required :changed_at, Time

          # @!attribute message
          #   A human-readable description of the status.
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #   A machine-readable identifier for the specific status, useful for programmatic
          #   handling.
          #
          #   @return [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Reason]
          required :reason, enum: -> { Straddle::PayoutV1::Data::StatusHistory::Reason }

          # @!attribute source
          #   Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          #   This helps in tracking the cause of status updates.
          #
          #   @return [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Source]
          required :source, enum: -> { Straddle::PayoutV1::Data::StatusHistory::Source }

          # @!attribute status
          #   The current status of the `charge` or `payout`.
          #
          #   @return [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Status]
          required :status, enum: -> { Straddle::PayoutV1::Data::StatusHistory::Status }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, status:, code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PayoutV1::Data::StatusHistory} for more details.
          #
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the status.
          #
          #   @param reason [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Reason] A machine-readable identifier for the specific status, useful for programmatic h
          #
          #   @param source [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Source] Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          #
          #   @param status [Symbol, Straddle::Models::PayoutV1::Data::StatusHistory::Status] The current status of the `charge` or `payout`.
          #
          #   @param code [String, nil] The status code if applicable.

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          #
          # @see Straddle::Models::PayoutV1::Data::StatusHistory#reason
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

          # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          # This helps in tracking the cause of status updates.
          #
          # @see Straddle::Models::PayoutV1::Data::StatusHistory#source
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

          # The current status of the `charge` or `payout`.
          #
          # @see Straddle::Models::PayoutV1::Data::StatusHistory#status
          module Status
            extend Straddle::Internal::Type::Enum

            CREATED = :created
            SCHEDULED = :scheduled
            FAILED = :failed
            CANCELLED = :cancelled
            ON_HOLD = :on_hold
            PENDING = :pending
            PAID = :paid
            REVERSED = :reversed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The payment rail used for the payout.
        #
        # @see Straddle::Models::PayoutV1::Data#payment_rail
        module PaymentRail
          extend Straddle::Internal::Type::Enum

          ACH = :ach

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
      # @see Straddle::Models::PayoutV1#response_type
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
