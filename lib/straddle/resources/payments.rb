# frozen_string_literal: true

module Straddle
  module Resources
    class Payments
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaymentListParams} for more details.
      #
      # Search for payments, including `charges` and `payouts`, using a variety of
      # criteria. This endpoint supports advanced sorting and filtering options.
      #
      # @overload list(customer_id: nil, default_page_size: nil, default_sort: nil, default_sort_order: nil, external_id: nil, funding_id: nil, max_amount: nil, max_created_at: nil, max_effective_at: nil, max_payment_date: nil, min_amount: nil, min_created_at: nil, min_effective_at: nil, min_payment_date: nil, page_number: nil, page_size: nil, paykey: nil, paykey_id: nil, payment_id: nil, payment_status: nil, payment_type: nil, search_text: nil, sort_by: nil, sort_order: nil, status_reason: nil, status_source: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param customer_id [String] Query param: Search using the `customer_id` of a `charge` or `payout`.
      #
      # @param default_page_size [Integer] Query param:
      #
      # @param default_sort [Symbol, Straddle::Models::PaymentListParams::DefaultSort] Query param: The field to sort the results by.
      #
      # @param default_sort_order [Symbol, Straddle::Models::PaymentListParams::DefaultSortOrder] Query param:
      #
      # @param external_id [String] Query param: Search using the `external_id` of a `charge` or `payout`.
      #
      # @param funding_id [String] Query param: Search using the `funding_id` of a `charge` or `payout`.
      #
      # @param max_amount [Integer] Query param: Search using a maximum `amount` of a `charge` or `payout`.
      #
      # @param max_created_at [Time] Query param: Search using the latest `created_at` date of a `charge` or `payout`
      #
      # @param max_effective_at [Time] Query param: Search using the latest `effective_date` of a `charge` or `payout`.
      #
      # @param max_payment_date [Date] Query param: Search using the latest `payment_date` of a `charge` or `payout`.
      #
      # @param min_amount [Integer] Query param: Search using the minimum `amount of a `charge`or`payout`.
      #
      # @param min_created_at [Time] Query param: Search using the earliest `created_at` date of a `charge` or `payou
      #
      # @param min_effective_at [Time] Query param: Search using the earliest `effective_date` of a `charge` or `payout
      #
      # @param min_payment_date [Date] Query param: Search using the earliest ` `of a `charge` or `payout`.
      #
      # @param page_number [Integer] Query param: Results page number. Starts at page 1.
      #
      # @param page_size [Integer] Query param: Results page size. Max value: 1000
      #
      # @param paykey [String] Query param: Search using the `paykey` of a `charge` or `payout`.
      #
      # @param paykey_id [String] Query param: Search using the `paykey_id` of a `charge` or `payout`.
      #
      # @param payment_id [String] Query param: Search using the `id` of a `charge` or `payout`.
      #
      # @param payment_status [Array<Symbol, Straddle::Models::PaymentListParams::PaymentStatus>] Query param: Search by the status of a `charge` or `payout`.
      #
      # @param payment_type [Array<Symbol, Straddle::Models::PaymentListParams::PaymentType>] Query param: Search by the type of a `charge` or `payout`.
      #
      # @param search_text [String] Query param: Search using a text string associated with a `charge` or `payout`.
      #
      # @param sort_by [Symbol, Straddle::Models::PaymentListParams::SortBy] Query param: The field to sort the results by.
      #
      # @param sort_order [Symbol, Straddle::Models::PaymentListParams::SortOrder] Query param:
      #
      # @param status_reason [Array<Symbol, Straddle::Models::PaymentListParams::StatusReason>] Query param: Reason for latest payment status change.
      #
      # @param status_source [Array<Symbol, Straddle::Models::PaymentListParams::StatusSource>] Query param: Source of latest payment status change.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::PaymentSummaryPagedV1::Data>]
      #
      # @see Straddle::Models::PaymentListParams
      def list(params = {})
        parsed, options = Straddle::PaymentListParams.dump_request(params)
        query_params =
          [
            :customer_id,
            :default_page_size,
            :default_sort,
            :default_sort_order,
            :external_id,
            :funding_id,
            :max_amount,
            :max_created_at,
            :max_effective_at,
            :max_payment_date,
            :min_amount,
            :min_created_at,
            :min_effective_at,
            :min_payment_date,
            :page_number,
            :page_size,
            :paykey,
            :paykey_id,
            :payment_id,
            :payment_status,
            :payment_type,
            :search_text,
            :sort_by,
            :sort_order,
            :status_reason,
            :status_source
          ]
        @client.request(
          method: :get,
          path: "v1/payments",
          query: parsed.slice(*query_params),
          headers: parsed.except(*query_params).transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          page: Straddle::Internal::PageNumberSchema,
          model: Straddle::PaymentSummaryPagedV1::Data,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
