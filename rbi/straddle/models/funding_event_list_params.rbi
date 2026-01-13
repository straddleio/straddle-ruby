# typed: strong

module Straddle
  module Models
    class FundingEventListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::FundingEventListParams, Straddle::Internal::AnyHash)
        end

      # The start date of the range to filter by using the `YYYY-MM-DD` format.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_from

      # The end date of the range to filter by using the `YYYY-MM-DD` format.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_to

      # Describes the direction of the funding event from the perspective of the
      # `linked_bank_account`.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::Direction::OrSymbol)
        )
      end
      attr_reader :direction

      sig do
        params(
          direction: Straddle::FundingEventListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The funding event types describes the direction and reason for the funding
      # event.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::EventType::OrSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Straddle::FundingEventListParams::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

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

      # Search text.
      sig { returns(T.nilable(String)) }
      attr_accessor :search_text

      # The field to sort the results by.
      sig do
        returns(T.nilable(Straddle::FundingEventListParams::SortBy::OrSymbol))
      end
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      # The order in which to sort the results.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Funding Event status.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::FundingEventListParams::Status::OrSymbol]
          )
        )
      end
      attr_accessor :status

      # Reason for latest payment status change.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::FundingEventListParams::StatusReason::OrSymbol]
          )
        )
      end
      attr_accessor :status_reason

      # Source of latest payment status change.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::FundingEventListParams::StatusSource::OrSymbol]
          )
        )
      end
      attr_accessor :status_source

      # Trace Id.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_id

      # Trace number.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_number

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
          created_from: T.nilable(Date),
          created_to: T.nilable(Date),
          direction: Straddle::FundingEventListParams::Direction::OrSymbol,
          event_type: Straddle::FundingEventListParams::EventType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          search_text: T.nilable(String),
          sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
          sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol,
          status:
            T.nilable(
              T::Array[Straddle::FundingEventListParams::Status::OrSymbol]
            ),
          status_reason:
            T.nilable(
              T::Array[Straddle::FundingEventListParams::StatusReason::OrSymbol]
            ),
          status_source:
            T.nilable(
              T::Array[Straddle::FundingEventListParams::StatusSource::OrSymbol]
            ),
          trace_id: T.nilable(String),
          trace_number: T.nilable(String),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The start date of the range to filter by using the `YYYY-MM-DD` format.
        created_from: nil,
        # The end date of the range to filter by using the `YYYY-MM-DD` format.
        created_to: nil,
        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        direction: nil,
        # The funding event types describes the direction and reason for the funding
        # event.
        event_type: nil,
        # Results page number. Starts at page 1.
        page_number: nil,
        # Results page size. Max value: 1000
        page_size: nil,
        # Search text.
        search_text: nil,
        # The field to sort the results by.
        sort_by: nil,
        # The order in which to sort the results.
        sort_order: nil,
        # Funding Event status.
        status: nil,
        # Reason for latest payment status change.
        status_reason: nil,
        # Source of latest payment status change.
        status_source: nil,
        # Trace Id.
        trace_id: nil,
        # Trace number.
        trace_number: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_from: T.nilable(Date),
            created_to: T.nilable(Date),
            direction: Straddle::FundingEventListParams::Direction::OrSymbol,
            event_type: Straddle::FundingEventListParams::EventType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            search_text: T.nilable(String),
            sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
            sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol,
            status:
              T.nilable(
                T::Array[Straddle::FundingEventListParams::Status::OrSymbol]
              ),
            status_reason:
              T.nilable(
                T::Array[
                  Straddle::FundingEventListParams::StatusReason::OrSymbol
                ]
              ),
            status_source:
              T.nilable(
                T::Array[
                  Straddle::FundingEventListParams::StatusSource::OrSymbol
                ]
              ),
            trace_id: T.nilable(String),
            trace_number: T.nilable(String),
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Describes the direction of the funding event from the perspective of the
      # `linked_bank_account`.
      module Direction
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :deposit,
            Straddle::FundingEventListParams::Direction::TaggedSymbol
          )
        WITHDRAWAL =
          T.let(
            :withdrawal,
            Straddle::FundingEventListParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The funding event types describes the direction and reason for the funding
      # event.
      module EventType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGE_DEPOSIT =
          T.let(
            :charge_deposit,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        CHARGE_DEPOSIT_2 =
          T.let(
            :ChargeDeposit,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        CHARGE_REVERSAL =
          T.let(
            :charge_reversal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        CHARGE_REVERSAL_2 =
          T.let(
            :ChargeReversal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_RETURN =
          T.let(
            :payout_return,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_RETURN_2 =
          T.let(
            :PayoutReturn,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_WITHDRAWAL =
          T.let(
            :payout_withdrawal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_WITHDRAWAL_2 =
          T.let(
            :PayoutWithdrawal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::SortBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_DATE =
          T.let(
            :transfer_date,
            Straddle::FundingEventListParams::SortBy::TaggedSymbol
          )
        TRANSFER_DATE_2 =
          T.let(
            :TransferDate,
            Straddle::FundingEventListParams::SortBy::TaggedSymbol
          )
        ID = T.let(:id, Straddle::FundingEventListParams::SortBy::TaggedSymbol)
        ID_2 =
          T.let(:Id, Straddle::FundingEventListParams::SortBy::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::FundingEventListParams::SortBy::TaggedSymbol)
        AMOUNT_2 =
          T.let(:Amount, Straddle::FundingEventListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The order in which to sort the results.
      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, Straddle::FundingEventListParams::SortOrder::TaggedSymbol)
        ASC_2 =
          T.let(:Asc, Straddle::FundingEventListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(
            :desc,
            Straddle::FundingEventListParams::SortOrder::TaggedSymbol
          )
        DESC_2 =
          T.let(
            :Desc,
            Straddle::FundingEventListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The current status of the `charge` or `payout`.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        CREATED_2 =
          T.let(
            :Created,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        SCHEDULED =
          T.let(
            :scheduled,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        SCHEDULED_2 =
          T.let(
            :Scheduled,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Straddle::FundingEventListParams::Status::TaggedSymbol)
        FAILED_2 =
          T.let(:Failed, Straddle::FundingEventListParams::Status::TaggedSymbol)
        CANCELLED =
          T.let(
            :cancelled,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        CANCELLED_2 =
          T.let(
            :Cancelled,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        ON_HOLD =
          T.let(
            :on_hold,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        ON_HOLD_2 =
          T.let(:OnHold, Straddle::FundingEventListParams::Status::TaggedSymbol)
        PENDING =
          T.let(
            :pending,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        PENDING_2 =
          T.let(
            :Pending,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        PAID =
          T.let(:paid, Straddle::FundingEventListParams::Status::TaggedSymbol)
        PAID_2 =
          T.let(:Paid, Straddle::FundingEventListParams::Status::TaggedSymbol)
        REVERSED =
          T.let(
            :reversed,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )
        REVERSED_2 =
          T.let(
            :Reversed,
            Straddle::FundingEventListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module StatusReason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::StatusReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSUFFICIENT_FUNDS =
          T.let(
            :insufficient_funds,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INSUFFICIENT_FUNDS_2 =
          T.let(
            :InsufficientFunds,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        CLOSED_BANK_ACCOUNT =
          T.let(
            :closed_bank_account,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        CLOSED_BANK_ACCOUNT_2 =
          T.let(
            :ClosedBankAccount,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_BANK_ACCOUNT =
          T.let(
            :invalid_bank_account,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_BANK_ACCOUNT_2 =
          T.let(
            :InvalidBankAccount,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_ROUTING =
          T.let(
            :invalid_routing,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_ROUTING_2 =
          T.let(
            :InvalidRouting,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        DISPUTED =
          T.let(
            :disputed,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        DISPUTED_2 =
          T.let(
            :Disputed,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_STOPPED =
          T.let(
            :payment_stopped,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_STOPPED_2 =
          T.let(
            :PaymentStopped,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OWNER_DECEASED =
          T.let(
            :owner_deceased,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OWNER_DECEASED_2 =
          T.let(
            :OwnerDeceased,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        FROZEN_BANK_ACCOUNT =
          T.let(
            :frozen_bank_account,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        FROZEN_BANK_ACCOUNT_2 =
          T.let(
            :FrozenBankAccount,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        RISK_REVIEW =
          T.let(
            :risk_review,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        RISK_REVIEW_2 =
          T.let(
            :RiskReview,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        FRAUDULENT =
          T.let(
            :fraudulent,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        FRAUDULENT_2 =
          T.let(
            :Fraudulent,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        DUPLICATE_ENTRY =
          T.let(
            :duplicate_entry,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        DUPLICATE_ENTRY_2 =
          T.let(
            :DuplicateEntry,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_PAYKEY =
          T.let(
            :invalid_paykey,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INVALID_PAYKEY_2 =
          T.let(
            :InvalidPaykey,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_BLOCKED =
          T.let(
            :payment_blocked,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYMENT_BLOCKED_2 =
          T.let(
            :PaymentBlocked,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        AMOUNT_TOO_LARGE =
          T.let(
            :amount_too_large,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        AMOUNT_TOO_LARGE_2 =
          T.let(
            :AmountTooLarge,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        TOO_MANY_ATTEMPTS =
          T.let(
            :too_many_attempts,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        TOO_MANY_ATTEMPTS_2 =
          T.let(
            :TooManyAttempts,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INTERNAL_SYSTEM_ERROR =
          T.let(
            :internal_system_error,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        INTERNAL_SYSTEM_ERROR_2 =
          T.let(
            :InternalSystemError,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        USER_REQUEST =
          T.let(
            :user_request,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        USER_REQUEST_2 =
          T.let(
            :UserRequest,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OK =
          T.let(
            :ok,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OK_2 =
          T.let(
            :Ok,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OTHER_NETWORK_RETURN =
          T.let(
            :other_network_return,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        OTHER_NETWORK_RETURN_2 =
          T.let(
            :OtherNetworkReturn,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYOUT_REFUSED =
          T.let(
            :payout_refused,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        PAYOUT_REFUSED_2 =
          T.let(
            :PayoutRefused,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        CANCEL_REQUEST =
          T.let(
            :cancel_request,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        FAILED_VERIFICATION =
          T.let(
            :failed_verification,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        REQUIRE_REVIEW =
          T.let(
            :require_review,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        BLOCKED_BY_SYSTEM =
          T.let(
            :blocked_by_system,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )
        WATCHTOWER_REVIEW =
          T.let(
            :watchtower_review,
            Straddle::FundingEventListParams::StatusReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventListParams::StatusReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module StatusSource
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::StatusSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(
            :watchtower,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        WATCHTOWER_2 =
          T.let(
            :Watchtower,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        BANK_DECLINE =
          T.let(
            :bank_decline,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        BANK_DECLINE_2 =
          T.let(
            :BankDecline,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        CUSTOMER_DISPUTE =
          T.let(
            :customer_dispute,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        CUSTOMER_DISPUTE_2 =
          T.let(
            :CustomerDispute,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        USER_ACTION =
          T.let(
            :user_action,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        USER_ACTION_2 =
          T.let(
            :UserAction,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        SYSTEM =
          T.let(
            :system,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )
        SYSTEM_2 =
          T.let(
            :System,
            Straddle::FundingEventListParams::StatusSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventListParams::StatusSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
