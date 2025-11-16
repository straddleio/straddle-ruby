# frozen_string_literal: true

module Straddle
  module Models
    class PaymentSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Straddle::Models::PaymentSummaryPagedV1::Data>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentSummaryPagedV1::Data] }

      # @!attribute meta
      #
      #   @return [Straddle::Models::PaymentSummaryPagedV1::Meta]
      required :meta, -> { Straddle::PaymentSummaryPagedV1::Meta }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::PaymentSummaryPagedV1::ResponseType]
      required :response_type, enum: -> { Straddle::PaymentSummaryPagedV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaymentSummaryPagedV1} for more details.
      #
      #   @param data [Array<Straddle::Models::PaymentSummaryPagedV1::Data>]
      #
      #   @param meta [Straddle::Models::PaymentSummaryPagedV1::Meta]
      #
      #   @param response_type [Symbol, Straddle::Models::PaymentSummaryPagedV1::ResponseType] Indicates the structure of the returned content.

      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the `charge` or `payout`.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the `charge` or `payout` in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #   The time the `charge` or `payout` was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   The currency of the `charge` or `payout`. Only USD is supported.
        #
        #   @return [String]
        required :currency, String

        # @!attribute description
        #   An arbitrary description for the `charge` or `payout`.
        #
        #   @return [String]
        required :description, String

        # @!attribute external_id
        #   Unique identifier for the `charge` or `payout` in your database. This value must
        #   be unique across all charges or payouts.
        #
        #   @return [String]
        required :external_id, String

        # @!attribute funding_ids
        #   Funding ids.
        #
        #   @return [Array<String>]
        required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute paykey
        #   Value of the `paykey` used for the `charge` or `payout`.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute payment_date
        #   The desired date on which the payment should be occur. For charges, this means
        #   the date you want the customer to be debited on. For payouts, this means the
        #   date you want the funds to be sent from your bank account.
        #
        #   @return [Date]
        required :payment_date, Date

        # @!attribute payment_type
        #   The type of payment. Valid values are `charge` or `payout`.
        #
        #   @return [Symbol, Straddle::Models::PaymentSummaryPagedV1::Data::PaymentType]
        required :payment_type, enum: -> { Straddle::PaymentSummaryPagedV1::Data::PaymentType }

        # @!attribute status
        #   The current status of the `charge` or `payout`.
        #
        #   @return [Symbol, Straddle::Models::PaymentSummaryPagedV1::Data::Status]
        required :status, enum: -> { Straddle::PaymentSummaryPagedV1::Data::Status }

        # @!attribute status_details
        #   Details about the current status of the `charge` or `payout`.
        #
        #   @return [Straddle::Models::StatusDetailsV1]
        required :status_details, -> { Straddle::StatusDetailsV1 }

        # @!attribute trace_ids
        #   Trace ids.
        #
        #   @return [Hash{Symbol=>String}]
        required :trace_ids, Straddle::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #   The time the `charge` or `payout` was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute customer_details
        #   Information about the customer associated with the charge or payout.
        #
        #   @return [Straddle::Models::CustomerDetailsV1, nil]
        optional :customer_details, -> { Straddle::CustomerDetailsV1 }

        # @!attribute effective_at
        #   The actual date on which the payment occurred. For charges, this is the date the
        #   customer was debited. For payouts, this is the date the funds were sent from
        #   your bank account.
        #
        #   @return [Time, nil]
        optional :effective_at, Time, nil?: true

        # @!attribute funding_id
        #   Unique identifier for the funding event associated with the `charge` or
        #   `payout`.
        #
        #   @return [String, nil]
        optional :funding_id, String, nil?: true

        # @!attribute paykey_details
        #   Information about the paykey used for the `charge` or `payout`.
        #
        #   @return [Straddle::Models::PaykeyDetailsV1, nil]
        optional :paykey_details, -> { Straddle::PaykeyDetailsV1 }

        # @!method initialize(id:, amount:, created_at:, currency:, description:, external_id:, funding_ids:, paykey:, payment_date:, payment_type:, status:, status_details:, trace_ids:, updated_at:, customer_details: nil, effective_at: nil, funding_id: nil, paykey_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::PaymentSummaryPagedV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the `charge` or `payout`.
        #
        #   @param amount [Integer] The amount of the `charge` or `payout` in cents.
        #
        #   @param created_at [Time] The time the `charge` or `payout` was created.
        #
        #   @param currency [String] The currency of the `charge` or `payout`. Only USD is supported.
        #
        #   @param description [String] An arbitrary description for the `charge` or `payout`.
        #
        #   @param external_id [String] Unique identifier for the `charge` or `payout` in your database. This value must
        #
        #   @param funding_ids [Array<String>] Funding ids.
        #
        #   @param paykey [String] Value of the `paykey` used for the `charge` or `payout`.
        #
        #   @param payment_date [Date] The desired date on which the payment should be occur. For charges, this means t
        #
        #   @param payment_type [Symbol, Straddle::Models::PaymentSummaryPagedV1::Data::PaymentType] The type of payment. Valid values are `charge` or `payout`.
        #
        #   @param status [Symbol, Straddle::Models::PaymentSummaryPagedV1::Data::Status] The current status of the `charge` or `payout`.
        #
        #   @param status_details [Straddle::Models::StatusDetailsV1] Details about the current status of the `charge` or `payout`.
        #
        #   @param trace_ids [Hash{Symbol=>String}] Trace ids.
        #
        #   @param updated_at [Time] The time the `charge` or `payout` was last updated.
        #
        #   @param customer_details [Straddle::Models::CustomerDetailsV1] Information about the customer associated with the charge or payout.
        #
        #   @param effective_at [Time, nil] The actual date on which the payment occurred. For charges, this is the date the
        #
        #   @param funding_id [String, nil] Unique identifier for the funding event associated with the `charge` or `payout`
        #
        #   @param paykey_details [Straddle::Models::PaykeyDetailsV1] Information about the paykey used for the `charge` or `payout`.

        # The type of payment. Valid values are `charge` or `payout`.
        #
        # @see Straddle::Models::PaymentSummaryPagedV1::Data#payment_type
        module PaymentType
          extend Straddle::Internal::Type::Enum

          CHARGE = :charge
          PAYOUT = :payout

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the `charge` or `payout`.
        #
        # @see Straddle::Models::PaymentSummaryPagedV1::Data#status
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

      # @see Straddle::Models::PaymentSummaryPagedV1#meta
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
        #   @return [Symbol, Straddle::Models::PaymentSummaryPagedV1::Meta::SortOrder]
        required :sort_order, enum: -> { Straddle::PaymentSummaryPagedV1::Meta::SortOrder }

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
        #   @param sort_order [Symbol, Straddle::Models::PaymentSummaryPagedV1::Meta::SortOrder]
        #
        #   @param total_items [Integer]
        #
        #   @param total_pages [Integer] The number of pages available.

        # @see Straddle::Models::PaymentSummaryPagedV1::Meta#sort_order
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
      # @see Straddle::Models::PaymentSummaryPagedV1#response_type
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
