# typed: strong

module Straddle
  module Models
    class FundingEventSummaryItemV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventSummaryItemV1,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::FundingEventSummaryItemV1::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::FundingEventSummaryItemV1::Data::OrHash).void
      end
      attr_writer :data

      # Metadata about the API request, including an identifier and timestamp.
      sig { returns(Straddle::ResponseMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol)
      end
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::FundingEventSummaryItemV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type:
            Straddle::FundingEventSummaryItemV1::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Metadata about the API request, including an identifier and timestamp.
        meta:,
        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        response_type:
      )
      end

      sig do
        override.returns(
          {
            data: Straddle::FundingEventSummaryItemV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::FundingEventSummaryItemV1::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the funding event.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the funding event in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        # Created at.
        sig { returns(Time) }
        attr_accessor :created_at

        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        sig do
          returns(
            Straddle::FundingEventSummaryItemV1::Data::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        # The funding event types describes the direction and reason for the funding
        # event.
        sig do
          returns(
            Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # The number of payments associated with the funding event.
        sig { returns(Integer) }
        attr_accessor :payment_count

        # Trace Ids.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :trace_ids

        # Trace number.
        sig { returns(T::Array[String]) }
        attr_accessor :trace_numbers

        # The date on which the funding event occurred. For `deposits` and `returns`, this
        # is the date the funds were credited to your bank account. For `withdrawals` and
        # `reversals`, this is the date the funds were debited from your bank account.
        sig { returns(Date) }
        attr_accessor :transfer_date

        # Updated at.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The current status of the `charge` or `payout`.
        sig do
          returns(
            T.nilable(
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Straddle::FundingEventSummaryItemV1::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(Straddle::FundingEventSummaryItemV1::Data::StatusDetails)
          )
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::FundingEventSummaryItemV1::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        # The trace number of the funding event.
        sig { returns(T.nilable(String)) }
        attr_accessor :trace_number

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Time,
            direction:
              Straddle::FundingEventSummaryItemV1::Data::Direction::OrSymbol,
            event_type:
              Straddle::FundingEventSummaryItemV1::Data::EventType::OrSymbol,
            payment_count: Integer,
            trace_ids: T::Hash[Symbol, String],
            trace_numbers: T::Array[String],
            transfer_date: Date,
            updated_at: Time,
            status: Straddle::FundingEventSummaryItemV1::Data::Status::OrSymbol,
            status_details:
              Straddle::FundingEventSummaryItemV1::Data::StatusDetails::OrHash,
            trace_number: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the funding event.
          id:,
          # The amount of the funding event in cents.
          amount:,
          # Created at.
          created_at:,
          # Describes the direction of the funding event from the perspective of the
          # `linked_bank_account`.
          direction:,
          # The funding event types describes the direction and reason for the funding
          # event.
          event_type:,
          # The number of payments associated with the funding event.
          payment_count:,
          # Trace Ids.
          trace_ids:,
          # Trace number.
          trace_numbers:,
          # The date on which the funding event occurred. For `deposits` and `returns`, this
          # is the date the funds were credited to your bank account. For `withdrawals` and
          # `reversals`, this is the date the funds were debited from your bank account.
          transfer_date:,
          # Updated at.
          updated_at:,
          # The current status of the `charge` or `payout`.
          status: nil,
          status_details: nil,
          # The trace number of the funding event.
          trace_number: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              direction:
                Straddle::FundingEventSummaryItemV1::Data::Direction::TaggedSymbol,
              event_type:
                Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol,
              payment_count: Integer,
              trace_ids: T::Hash[Symbol, String],
              trace_numbers: T::Array[String],
              transfer_date: Date,
              updated_at: Time,
              status:
                Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol,
              status_details:
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails,
              trace_number: T.nilable(String)
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
              T.all(
                Symbol,
                Straddle::FundingEventSummaryItemV1::Data::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPOSIT =
            T.let(
              :deposit,
              Straddle::FundingEventSummaryItemV1::Data::Direction::TaggedSymbol
            )
          WITHDRAWAL =
            T.let(
              :withdrawal,
              Straddle::FundingEventSummaryItemV1::Data::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryItemV1::Data::Direction::TaggedSymbol
              ]
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
              T.all(
                Symbol,
                Straddle::FundingEventSummaryItemV1::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE_DEPOSIT =
            T.let(
              :charge_deposit,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          CHARGE_DEPOSIT_2 =
            T.let(
              :ChargeDeposit,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          CHARGE_REVERSAL =
            T.let(
              :charge_reversal,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          CHARGE_REVERSAL_2 =
            T.let(
              :ChargeReversal,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_RETURN =
            T.let(
              :payout_return,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_RETURN_2 =
            T.let(
              :PayoutReturn,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_WITHDRAWAL =
            T.let(
              :payout_withdrawal,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_WITHDRAWAL_2 =
            T.let(
              :PayoutWithdrawal,
              Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryItemV1::Data::EventType::TaggedSymbol
              ]
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
              T.all(Symbol, Straddle::FundingEventSummaryItemV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          CREATED_2 =
            T.let(
              :Created,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          SCHEDULED_2 =
            T.let(
              :Scheduled,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          FAILED_2 =
            T.let(
              :Failed,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          CANCELLED_2 =
            T.let(
              :Cancelled,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          ON_HOLD_2 =
            T.let(
              :OnHold,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          PENDING_2 =
            T.let(
              :Pending,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          PAID_2 =
            T.let(
              :Paid,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )
          REVERSED_2 =
            T.let(
              :Reversed,
              Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryItemV1::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class StatusDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails,
                Straddle::Internal::AnyHash
              )
            end

          # The time the status change occurred.
          sig { returns(Time) }
          attr_accessor :changed_at

          # A human-readable description of the current status.
          sig { returns(String) }
          attr_accessor :message

          sig do
            returns(
              Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig do
            returns(
              Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
            )
          end
          attr_accessor :source

          # The status code if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          sig do
            params(
              changed_at: Time,
              message: String,
              reason:
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::OrSymbol,
              source:
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::OrSymbol,
              code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The time the status change occurred.
            changed_at:,
            # A human-readable description of the current status.
            message:,
            reason:,
            source:,
            # The status code if applicable.
            code: nil
          )
          end

          sig do
            override.returns(
              {
                changed_at: Time,
                message: String,
                reason:
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol,
                source:
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol,
                code: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module Reason
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INSUFFICIENT_FUNDS_2 =
              T.let(
                :InsufficientFunds,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT_2 =
              T.let(
                :ClosedBankAccount,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT_2 =
              T.let(
                :InvalidBankAccount,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING_2 =
              T.let(
                :InvalidRouting,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED_2 =
              T.let(
                :Disputed,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED_2 =
              T.let(
                :PaymentStopped,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED_2 =
              T.let(
                :OwnerDeceased,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT_2 =
              T.let(
                :FrozenBankAccount,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW_2 =
              T.let(
                :RiskReview,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT_2 =
              T.let(
                :Fraudulent,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY_2 =
              T.let(
                :DuplicateEntry,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY_2 =
              T.let(
                :InvalidPaykey,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED_2 =
              T.let(
                :PaymentBlocked,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE_2 =
              T.let(
                :AmountTooLarge,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS_2 =
              T.let(
                :TooManyAttempts,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR_2 =
              T.let(
                :InternalSystemError,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST_2 =
              T.let(
                :UserRequest,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK_2 =
              T.let(
                :Ok,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN_2 =
              T.let(
                :OtherNetworkReturn,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED_2 =
              T.let(
                :PayoutRefused,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            CANCEL_REQUEST =
              T.let(
                :cancel_request,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FAILED_VERIFICATION =
              T.let(
                :failed_verification,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            REQUIRE_REVIEW =
              T.let(
                :require_review,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            BLOCKED_BY_SYSTEM =
              T.let(
                :blocked_by_system,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            WATCHTOWER_REVIEW =
              T.let(
                :watchtower_review,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Source
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            WATCHTOWER_2 =
              T.let(
                :Watchtower,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            BANK_DECLINE_2 =
              T.let(
                :BankDecline,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE_2 =
              T.let(
                :CustomerDispute,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            USER_ACTION_2 =
              T.let(
                :UserAction,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )
            SYSTEM_2 =
              T.let(
                :System,
                Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::FundingEventSummaryItemV1::Data::StatusDetails::Source::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
      module ResponseType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventSummaryItemV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        OBJECT_2 =
          T.let(
            :Object,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        ARRAY_2 =
          T.let(
            :Array,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        ERROR_2 =
          T.let(
            :Error,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )
        NONE_2 =
          T.let(
            :None,
            Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventSummaryItemV1::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
