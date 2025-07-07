# typed: strong

module Straddle
  module Models
    class PaymentListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentListParams, Straddle::Internal::AnyHash)
        end

      # Search using the `customer_id` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :default_page_size

      sig { params(default_page_size: Integer).void }
      attr_writer :default_page_size

      # The field to sort the results by.
      sig do
        returns(T.nilable(Straddle::PaymentListParams::DefaultSort::OrSymbol))
      end
      attr_reader :default_sort

      sig do
        params(
          default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol
        ).void
      end
      attr_writer :default_sort

      sig do
        returns(
          T.nilable(Straddle::PaymentListParams::DefaultSortOrder::OrSymbol)
        )
      end
      attr_reader :default_sort_order

      sig do
        params(
          default_sort_order:
            Straddle::PaymentListParams::DefaultSortOrder::OrSymbol
        ).void
      end
      attr_writer :default_sort_order

      # Search using the `external_id` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Search using the `funding_id` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :funding_id

      sig { params(funding_id: String).void }
      attr_writer :funding_id

      # Search using a maximum `amount` of a `charge` or `payout`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_amount

      sig { params(max_amount: Integer).void }
      attr_writer :max_amount

      # Search using the latest `created_at` date of a `charge` or `payout`.
      sig { returns(T.nilable(Time)) }
      attr_reader :max_created_at

      sig { params(max_created_at: Time).void }
      attr_writer :max_created_at

      # Search using the latest `effective_date` of a `charge` or `payout`.
      sig { returns(T.nilable(Time)) }
      attr_reader :max_effective_at

      sig { params(max_effective_at: Time).void }
      attr_writer :max_effective_at

      # Search using the latest `payment_date` of a `charge` or `payout`.
      sig { returns(T.nilable(Date)) }
      attr_reader :max_payment_date

      sig { params(max_payment_date: Date).void }
      attr_writer :max_payment_date

      # Search using the minimum `amount of a `charge`or`payout`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_amount

      sig { params(min_amount: Integer).void }
      attr_writer :min_amount

      # Search using the earliest `created_at` date of a `charge` or `payout`.
      sig { returns(T.nilable(Time)) }
      attr_reader :min_created_at

      sig { params(min_created_at: Time).void }
      attr_writer :min_created_at

      # Search using the earliest `effective_date` of a `charge` or `payout`.
      sig { returns(T.nilable(Time)) }
      attr_reader :min_effective_at

      sig { params(min_effective_at: Time).void }
      attr_writer :min_effective_at

      # Search using the earliest ` `of a `charge` or `payout`.
      sig { returns(T.nilable(Date)) }
      attr_reader :min_payment_date

      sig { params(min_payment_date: Date).void }
      attr_writer :min_payment_date

      # Results page number. Starts at page 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Results page size. Max value: 1000
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Search using the `paykey` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :paykey

      sig { params(paykey: String).void }
      attr_writer :paykey

      # Search using the `paykey_id` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :paykey_id

      sig { params(paykey_id: String).void }
      attr_writer :paykey_id

      # Search using the `id` of a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_id

      sig { params(payment_id: String).void }
      attr_writer :payment_id

      # Search by the status of a `charge` or `payout`.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::PaymentListParams::PaymentStatus::OrSymbol]
          )
        )
      end
      attr_reader :payment_status

      sig do
        params(
          payment_status:
            T::Array[Straddle::PaymentListParams::PaymentStatus::OrSymbol]
        ).void
      end
      attr_writer :payment_status

      # Search by the type of a `charge` or `payout`.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::PaymentListParams::PaymentType::OrSymbol]
          )
        )
      end
      attr_reader :payment_type

      sig do
        params(
          payment_type:
            T::Array[Straddle::PaymentListParams::PaymentType::OrSymbol]
        ).void
      end
      attr_writer :payment_type

      # Search using a text string associated with a `charge` or `payout`.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      # The field to sort the results by.
      sig { returns(T.nilable(Straddle::PaymentListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::PaymentListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      sig do
        returns(T.nilable(Straddle::PaymentListParams::SortOrder::OrSymbol))
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::PaymentListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Reason for latest payment status change.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::PaymentListParams::StatusReason::OrSymbol]
          )
        )
      end
      attr_reader :status_reason

      sig do
        params(
          status_reason:
            T::Array[Straddle::PaymentListParams::StatusReason::OrSymbol]
        ).void
      end
      attr_writer :status_reason

      # Source of latest payment status change.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::PaymentListParams::StatusSource::OrSymbol]
          )
        )
      end
      attr_reader :status_source

      sig do
        params(
          status_source:
            T::Array[Straddle::PaymentListParams::StatusSource::OrSymbol]
        ).void
      end
      attr_writer :status_source

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

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
        ).returns(T.attached_class)
      end
      def self.new(
        # Search using the `customer_id` of a `charge` or `payout`.
        customer_id: nil,
        default_page_size: nil,
        # The field to sort the results by.
        default_sort: nil,
        default_sort_order: nil,
        # Search using the `external_id` of a `charge` or `payout`.
        external_id: nil,
        # Search using the `funding_id` of a `charge` or `payout`.
        funding_id: nil,
        # Search using a maximum `amount` of a `charge` or `payout`.
        max_amount: nil,
        # Search using the latest `created_at` date of a `charge` or `payout`.
        max_created_at: nil,
        # Search using the latest `effective_date` of a `charge` or `payout`.
        max_effective_at: nil,
        # Search using the latest `payment_date` of a `charge` or `payout`.
        max_payment_date: nil,
        # Search using the minimum `amount of a `charge`or`payout`.
        min_amount: nil,
        # Search using the earliest `created_at` date of a `charge` or `payout`.
        min_created_at: nil,
        # Search using the earliest `effective_date` of a `charge` or `payout`.
        min_effective_at: nil,
        # Search using the earliest ` `of a `charge` or `payout`.
        min_payment_date: nil,
        # Results page number. Starts at page 1.
        page_number: nil,
        # Results page size. Max value: 1000
        page_size: nil,
        # Search using the `paykey` of a `charge` or `payout`.
        paykey: nil,
        # Search using the `paykey_id` of a `charge` or `payout`.
        paykey_id: nil,
        # Search using the `id` of a `charge` or `payout`.
        payment_id: nil,
        # Search by the status of a `charge` or `payout`.
        payment_status: nil,
        # Search by the type of a `charge` or `payout`.
        payment_type: nil,
        # Search using a text string associated with a `charge` or `payout`.
        search_text: nil,
        # The field to sort the results by.
        sort_by: nil,
        sort_order: nil,
        # Reason for latest payment status change.
        status_reason: nil,
        # Source of latest payment status change.
        status_source: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
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
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to sort the results by.
      module DefaultSort
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::DefaultSort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        ID = T.let(:id, Straddle::PaymentListParams::DefaultSort::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::PaymentListParams::DefaultSort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::DefaultSort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DefaultSortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::DefaultSortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            Straddle::PaymentListParams::DefaultSortOrder::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            Straddle::PaymentListParams::DefaultSortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::PaymentListParams::DefaultSortOrder::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current status of the `charge` or `payout`.
      module PaymentStatus
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::PaymentStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        SCHEDULED =
          T.let(
            :scheduled,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        ON_HOLD =
          T.let(
            :on_hold,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )
        PAID =
          T.let(:paid, Straddle::PaymentListParams::PaymentStatus::TaggedSymbol)
        REVERSED =
          T.let(
            :reversed,
            Straddle::PaymentListParams::PaymentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::PaymentStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of payment.
      module PaymentType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGE =
          T.let(:charge, Straddle::PaymentListParams::PaymentType::TaggedSymbol)
        PAYOUT =
          T.let(:payout, Straddle::PaymentListParams::PaymentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::PaymentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaymentListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Straddle::PaymentListParams::SortBy::TaggedSymbol)
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::PaymentListParams::SortBy::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::PaymentListParams::SortBy::TaggedSymbol
          )
        ID = T.let(:id, Straddle::PaymentListParams::SortBy::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::PaymentListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaymentListParams::SortOrder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Straddle::PaymentListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(:desc, Straddle::PaymentListParams::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module StatusReason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::StatusReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        CLOSED_BANK_ACCOUNT =
          T.let(
            :closed_bank_account,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        INVALID_BANK_ACCOUNT =
          T.let(
            :invalid_bank_account,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        INVALID_ROUTING =
          T.let(
            :invalid_routing,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        DISPUTED =
          T.let(
            :disputed,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_STOPPED =
          T.let(
            :payment_stopped,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        OWNER_DECEASED =
          T.let(
            :owner_deceased,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        FROZEN_BANK_ACCOUNT =
          T.let(
            :frozen_bank_account,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        RISK_REVIEW =
          T.let(
            :risk_review,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        FRAUDULENT =
          T.let(
            :fraudulent,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        DUPLICATE_ENTRY =
          T.let(
            :duplicate_entry,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        INVALID_PAYKEY =
          T.let(
            :invalid_paykey,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_BLOCKED =
          T.let(
            :payment_blocked,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        AMOUNT_TOO_LARGE =
          T.let(
            :amount_too_large,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        TOO_MANY_ATTEMPTS =
          T.let(
            :too_many_attempts,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        INTERNAL_SYSTEM_ERROR =
          T.let(
            :internal_system_error,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        USER_REQUEST =
          T.let(
            :user_request,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        OK = T.let(:ok, Straddle::PaymentListParams::StatusReason::TaggedSymbol)
        OTHER_NETWORK_RETURN =
          T.let(
            :other_network_return,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )
        PAYOUT_REFUSED =
          T.let(
            :payout_refused,
            Straddle::PaymentListParams::StatusReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::StatusReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module StatusSource
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::StatusSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(
            :watchtower,
            Straddle::PaymentListParams::StatusSource::TaggedSymbol
          )
        BANK_DECLINE =
          T.let(
            :bank_decline,
            Straddle::PaymentListParams::StatusSource::TaggedSymbol
          )
        CUSTOMER_DISPUTE =
          T.let(
            :customer_dispute,
            Straddle::PaymentListParams::StatusSource::TaggedSymbol
          )
        USER_ACTION =
          T.let(
            :user_action,
            Straddle::PaymentListParams::StatusSource::TaggedSymbol
          )
        SYSTEM =
          T.let(
            :system,
            Straddle::PaymentListParams::StatusSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::StatusSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
