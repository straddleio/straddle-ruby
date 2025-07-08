# typed: strong

module Straddle
  module Resources
    class Payments
      # Search for payments, including `charges` and `payouts`, using a variety of
      # criteria. This endpoint supports advanced sorting and filtering options.
      sig do
        params(
          customer_id: String,
          default_page_size: Integer,
          default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol,
          default_sort_order:
            Straddle::PaymentListParams::DefaultSortOrder::OrSymbol,
          external_id: String,
          funding_id: String,
          max_amount: Integer,
          max_created_at: Time,
          max_effective_at: Time,
          max_payment_date: Date,
          min_amount: Integer,
          min_created_at: Time,
          min_effective_at: Time,
          min_payment_date: Date,
          page_number: Integer,
          page_size: Integer,
          paykey: String,
          paykey_id: String,
          payment_id: String,
          payment_status:
            T::Array[Straddle::PaymentListParams::PaymentStatus::OrSymbol],
          payment_type:
            T::Array[Straddle::PaymentListParams::PaymentType::OrSymbol],
          search_text: String,
          sort_by: Straddle::PaymentListParams::SortBy::OrSymbol,
          sort_order: Straddle::PaymentListParams::SortOrder::OrSymbol,
          status_reason:
            T::Array[Straddle::PaymentListParams::StatusReason::OrSymbol],
          status_source:
            T::Array[Straddle::PaymentListParams::StatusSource::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(
          Straddle::Internal::PageNumberSchema[
            Straddle::PaymentSummaryPagedV1::Data
          ]
        )
      end
      def list(
        # Query param: Search using the `customer_id` of a `charge` or `payout`.
        customer_id: nil,
        # Query param:
        default_page_size: nil,
        # Query param: The field to sort the results by.
        default_sort: nil,
        # Query param:
        default_sort_order: nil,
        # Query param: Search using the `external_id` of a `charge` or `payout`.
        external_id: nil,
        # Query param: Search using the `funding_id` of a `charge` or `payout`.
        funding_id: nil,
        # Query param: Search using a maximum `amount` of a `charge` or `payout`.
        max_amount: nil,
        # Query param: Search using the latest `created_at` date of a `charge` or
        # `payout`.
        max_created_at: nil,
        # Query param: Search using the latest `effective_date` of a `charge` or `payout`.
        max_effective_at: nil,
        # Query param: Search using the latest `payment_date` of a `charge` or `payout`.
        max_payment_date: nil,
        # Query param: Search using the minimum `amount of a `charge`or`payout`.
        min_amount: nil,
        # Query param: Search using the earliest `created_at` date of a `charge` or
        # `payout`.
        min_created_at: nil,
        # Query param: Search using the earliest `effective_date` of a `charge` or
        # `payout`.
        min_effective_at: nil,
        # Query param: Search using the earliest ` `of a `charge` or `payout`.
        min_payment_date: nil,
        # Query param: Results page number. Starts at page 1.
        page_number: nil,
        # Query param: Results page size. Max value: 1000
        page_size: nil,
        # Query param: Search using the `paykey` of a `charge` or `payout`.
        paykey: nil,
        # Query param: Search using the `paykey_id` of a `charge` or `payout`.
        paykey_id: nil,
        # Query param: Search using the `id` of a `charge` or `payout`.
        payment_id: nil,
        # Query param: Search by the status of a `charge` or `payout`.
        payment_status: nil,
        # Query param: Search by the type of a `charge` or `payout`.
        payment_type: nil,
        # Query param: Search using a text string associated with a `charge` or `payout`.
        search_text: nil,
        # Query param: The field to sort the results by.
        sort_by: nil,
        # Query param:
        sort_order: nil,
        # Query param: Reason for latest payment status change.
        status_reason: nil,
        # Query param: Source of latest payment status change.
        status_source: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
