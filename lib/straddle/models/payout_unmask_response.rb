# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#unmask
    class PayoutUnmaskResponse < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::PayoutUnmaskResponse::Data]
      required :data, -> { Straddle::Models::PayoutUnmaskResponse::Data }

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
      #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::ResponseType]
      required :response_type, enum: -> { Straddle::Models::PayoutUnmaskResponse::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutUnmaskResponse} for more details.
      #
      #   @param data [Straddle::Models::PayoutUnmaskResponse::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::PayoutUnmaskResponse::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::PayoutUnmaskResponse#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Id.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Amount.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute config
        #
        #   @return [Straddle::Models::PayoutUnmaskResponse::Data::Config]
        required :config, -> { Straddle::Models::PayoutUnmaskResponse::Data::Config }

        # @!attribute currency
        #   Currency.
        #
        #   @return [String]
        required :currency, String

        # @!attribute description
        #   Description.
        #
        #   @return [String]
        required :description, String

        # @!attribute device
        #
        #   @return [Straddle::Models::PayoutUnmaskResponse::Data::Device]
        required :device, -> { Straddle::Models::PayoutUnmaskResponse::Data::Device }

        # @!attribute external_id
        #   External id.
        #
        #   @return [String]
        required :external_id, String

        # @!attribute funding_ids
        #   Funding Ids
        #
        #   @return [Array<String>]
        required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute paykey
        #   Paykey.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute payment_date
        #   Payment date.
        #
        #   @return [Date]
        required :payment_date, Date

        # @!attribute status
        #   The current status of the `charge` or `payout`.
        #
        #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::Status]
        required :status, enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::Status }

        # @!attribute status_details
        #
        #   @return [Straddle::Models::StatusDetailsV1]
        required :status_details, -> { Straddle::StatusDetailsV1 }

        # @!attribute status_history
        #   Status history.
        #
        #   @return [Array<Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory>]
        required :status_history,
                 -> { Straddle::Internal::Type::ArrayOf[Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory] }

        # @!attribute created_at
        #   Created at.
        #
        #   @return [Time, nil]
        optional :created_at, Time, nil?: true

        # @!attribute customer_details
        #   Information about the customer associated with the charge or payout.
        #
        #   @return [Straddle::Models::CustomerDetailsV1, nil]
        optional :customer_details, -> { Straddle::CustomerDetailsV1 }

        # @!attribute effective_at
        #   Effective at.
        #
        #   @return [Time, nil]
        optional :effective_at, Time, nil?: true

        # @!attribute metadata
        #   Metadata.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

        # @!attribute paykey_details
        #
        #   @return [Straddle::Models::PaykeyDetailsV1, nil]
        optional :paykey_details, -> { Straddle::PaykeyDetailsV1 }

        # @!attribute payment_rail
        #   The payment rail used for the charge or payout.
        #
        #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::PaymentRail, nil]
        optional :payment_rail, enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::PaymentRail }

        # @!attribute processed_at
        #   Processed at.
        #
        #   @return [Time, nil]
        optional :processed_at, Time, nil?: true

        # @!attribute updated_at
        #   Updated at.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, nil?: true

        # @!method initialize(id:, amount:, config:, currency:, description:, device:, external_id:, funding_ids:, paykey:, payment_date:, status:, status_details:, status_history:, created_at: nil, customer_details: nil, effective_at: nil, metadata: nil, paykey_details: nil, payment_rail: nil, processed_at: nil, updated_at: nil)
        #   @param id [String] Id.
        #
        #   @param amount [Integer] Amount.
        #
        #   @param config [Straddle::Models::PayoutUnmaskResponse::Data::Config]
        #
        #   @param currency [String] Currency.
        #
        #   @param description [String] Description.
        #
        #   @param device [Straddle::Models::PayoutUnmaskResponse::Data::Device]
        #
        #   @param external_id [String] External id.
        #
        #   @param funding_ids [Array<String>] Funding Ids
        #
        #   @param paykey [String] Paykey.
        #
        #   @param payment_date [Date] Payment date.
        #
        #   @param status [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::Status] The current status of the `charge` or `payout`.
        #
        #   @param status_details [Straddle::Models::StatusDetailsV1]
        #
        #   @param status_history [Array<Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory>] Status history.
        #
        #   @param created_at [Time, nil] Created at.
        #
        #   @param customer_details [Straddle::Models::CustomerDetailsV1] Information about the customer associated with the charge or payout.
        #
        #   @param effective_at [Time, nil] Effective at.
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Metadata.
        #
        #   @param paykey_details [Straddle::Models::PaykeyDetailsV1]
        #
        #   @param payment_rail [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::PaymentRail] The payment rail used for the charge or payout.
        #
        #   @param processed_at [Time, nil] Processed at.
        #
        #   @param updated_at [Time, nil] Updated at.

        # @see Straddle::Models::PayoutUnmaskResponse::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute sandbox_outcome
          #   Payment will simulate processing if not Standard.
          #
          #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome,
                   enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::Config::SandboxOutcome }

          # @!method initialize(sandbox_outcome: nil)
          #   @param sandbox_outcome [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::Config::SandboxOutcome] Payment will simulate processing if not Standard.

          # Payment will simulate processing if not Standard.
          #
          # @see Straddle::Models::PayoutUnmaskResponse::Data::Config#sandbox_outcome
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

        # @see Straddle::Models::PayoutUnmaskResponse::Data#device
        class Device < Straddle::Internal::Type::BaseModel
          # @!attribute ip_address
          #   Ip address.
          #
          #   @return [String]
          required :ip_address, String

          # @!method initialize(ip_address:)
          #   @param ip_address [String] Ip address.
        end

        # The current status of the `charge` or `payout`.
        #
        # @see Straddle::Models::PayoutUnmaskResponse::Data#status
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
          #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Reason]
          required :reason, enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Reason }

          # @!attribute source
          #   Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          #   This helps in tracking the cause of status updates.
          #
          #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Source]
          required :source, enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Source }

          # @!attribute status
          #   The current status of the `charge` or `payout`.
          #
          #   @return [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Status]
          required :status, enum: -> { Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Status }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, status:, code: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory} for more details.
          #
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the status.
          #
          #   @param reason [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Reason] A machine-readable identifier for the specific status, useful for programmatic h
          #
          #   @param source [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Source] Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          #
          #   @param status [Symbol, Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory::Status] The current status of the `charge` or `payout`.
          #
          #   @param code [String, nil] The status code if applicable.

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          #
          # @see Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory#reason
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
          # @see Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory#source
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
          # @see Straddle::Models::PayoutUnmaskResponse::Data::StatusHistory#status
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

        # The payment rail used for the charge or payout.
        #
        # @see Straddle::Models::PayoutUnmaskResponse::Data#payment_rail
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
      # @see Straddle::Models::PayoutUnmaskResponse#response_type
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
