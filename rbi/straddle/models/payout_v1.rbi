# typed: strong

module Straddle
  module Models
    class PayoutV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Straddle::PayoutV1, Straddle::Internal::AnyHash) }

      sig { returns(Straddle::PayoutV1::Data) }
      attr_reader :data

      sig { params(data: Straddle::PayoutV1::Data::OrHash).void }
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
      sig { returns(Straddle::PayoutV1::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::PayoutV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::PayoutV1::ResponseType::OrSymbol
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
            data: Straddle::PayoutV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type: Straddle::PayoutV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::PayoutV1::Data, Straddle::Internal::AnyHash)
          end

        # Unique identifier for the payout.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the payout in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        # Configuration for the payout.
        sig { returns(Straddle::PayoutV1::Data::Config) }
        attr_reader :config

        sig { params(config: Straddle::PayoutV1::Data::Config::OrHash).void }
        attr_writer :config

        # The currency of the payout. Only USD is supported.
        sig { returns(String) }
        attr_accessor :currency

        # An arbitrary description for the payout.
        sig { returns(String) }
        attr_accessor :description

        # Information about the device used when the customer authorized the payout.
        sig { returns(Straddle::DeviceInfoV1) }
        attr_reader :device

        sig { params(device: Straddle::DeviceInfoV1::OrHash).void }
        attr_writer :device

        # Unique identifier for the payout in your database. This value must be unique
        # across all payouts.
        sig { returns(String) }
        attr_accessor :external_id

        # Funding Ids
        sig { returns(T::Array[String]) }
        attr_accessor :funding_ids

        # Value of the `paykey` used for the payout.
        sig { returns(String) }
        attr_accessor :paykey

        # The desired date on which the payment should be occur. For payouts, this means
        # the date you want the funds to be sent from your bank account.
        sig { returns(Date) }
        attr_accessor :payment_date

        # The current status of the payout.
        sig { returns(Straddle::PayoutV1::Data::Status::TaggedSymbol) }
        attr_accessor :status

        # Details about the current status of the payout.
        sig { returns(Straddle::StatusDetailsV1) }
        attr_reader :status_details

        sig { params(status_details: Straddle::StatusDetailsV1::OrHash).void }
        attr_writer :status_details

        # History of the status changes for the payout.
        sig { returns(T::Array[Straddle::PayoutV1::Data::StatusHistory]) }
        attr_accessor :status_history

        # The time the payout was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Information about the customer associated with the payout.
        sig { returns(T.nilable(Straddle::CustomerDetailsV1)) }
        attr_reader :customer_details

        sig do
          params(customer_details: Straddle::CustomerDetailsV1::OrHash).void
        end
        attr_writer :customer_details

        # The actual date on which the payment occurred. For payouts, this is the date the
        # funds were sent from your bank account.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the payout in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Information about the paykey used for the payout.
        sig { returns(T.nilable(Straddle::PaykeyDetailsV1)) }
        attr_reader :paykey_details

        sig { params(paykey_details: Straddle::PaykeyDetailsV1::OrHash).void }
        attr_writer :paykey_details

        # The payment rail used for the payout.
        sig do
          returns(
            T.nilable(Straddle::PayoutV1::Data::PaymentRail::TaggedSymbol)
          )
        end
        attr_reader :payment_rail

        sig do
          params(
            payment_rail: Straddle::PayoutV1::Data::PaymentRail::OrSymbol
          ).void
        end
        attr_writer :payment_rail

        # The time the payout was processed by Straddle and originated to the payment
        # rail.
        sig { returns(T.nilable(Time)) }
        attr_accessor :processed_at

        # The time the payout was last updated.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            amount: Integer,
            config: Straddle::PayoutV1::Data::Config::OrHash,
            currency: String,
            description: String,
            device: Straddle::DeviceInfoV1::OrHash,
            external_id: String,
            funding_ids: T::Array[String],
            paykey: String,
            payment_date: Date,
            status: Straddle::PayoutV1::Data::Status::OrSymbol,
            status_details: Straddle::StatusDetailsV1::OrHash,
            status_history:
              T::Array[Straddle::PayoutV1::Data::StatusHistory::OrHash],
            created_at: T.nilable(Time),
            customer_details: Straddle::CustomerDetailsV1::OrHash,
            effective_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetailsV1::OrHash,
            payment_rail: Straddle::PayoutV1::Data::PaymentRail::OrSymbol,
            processed_at: T.nilable(Time),
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the payout.
          id:,
          # The amount of the payout in cents.
          amount:,
          # Configuration for the payout.
          config:,
          # The currency of the payout. Only USD is supported.
          currency:,
          # An arbitrary description for the payout.
          description:,
          # Information about the device used when the customer authorized the payout.
          device:,
          # Unique identifier for the payout in your database. This value must be unique
          # across all payouts.
          external_id:,
          # Funding Ids
          funding_ids:,
          # Value of the `paykey` used for the payout.
          paykey:,
          # The desired date on which the payment should be occur. For payouts, this means
          # the date you want the funds to be sent from your bank account.
          payment_date:,
          # The current status of the payout.
          status:,
          # Details about the current status of the payout.
          status_details:,
          # History of the status changes for the payout.
          status_history:,
          # The time the payout was created.
          created_at: nil,
          # Information about the customer associated with the payout.
          customer_details: nil,
          # The actual date on which the payment occurred. For payouts, this is the date the
          # funds were sent from your bank account.
          effective_at: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the payout in a structured format.
          metadata: nil,
          # Information about the paykey used for the payout.
          paykey_details: nil,
          # The payment rail used for the payout.
          payment_rail: nil,
          # The time the payout was processed by Straddle and originated to the payment
          # rail.
          processed_at: nil,
          # The time the payout was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              config: Straddle::PayoutV1::Data::Config,
              currency: String,
              description: String,
              device: Straddle::DeviceInfoV1,
              external_id: String,
              funding_ids: T::Array[String],
              paykey: String,
              payment_date: Date,
              status: Straddle::PayoutV1::Data::Status::TaggedSymbol,
              status_details: Straddle::StatusDetailsV1,
              status_history: T::Array[Straddle::PayoutV1::Data::StatusHistory],
              created_at: T.nilable(Time),
              customer_details: Straddle::CustomerDetailsV1,
              effective_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, String]),
              paykey_details: Straddle::PaykeyDetailsV1,
              payment_rail: Straddle::PayoutV1::Data::PaymentRail::TaggedSymbol,
              processed_at: T.nilable(Time),
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PayoutV1::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          # Payment will simulate processing if not Standard.
          sig do
            returns(
              T.nilable(
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::PayoutV1::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          # Configuration for the payout.
          sig do
            params(
              sandbox_outcome:
                Straddle::PayoutV1::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Payment will simulate processing if not Standard.
            sandbox_outcome: nil
          )
          end

          sig do
            override.returns(
              {
                sandbox_outcome:
                  Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Payment will simulate processing if not Standard.
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::PayoutV1::Data::Config::SandboxOutcome)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ON_HOLD_DAILY_LIMIT =
              T.let(
                :on_hold_daily_limit,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_FRAUD_RISK =
              T.let(
                :cancelled_for_fraud_risk,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_BALANCE_CHECK =
              T.let(
                :cancelled_for_balance_check,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_INSUFFICIENT_FUNDS =
              T.let(
                :failed_insufficient_funds,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_INSUFFICIENT_FUNDS =
              T.let(
                :reversed_insufficient_funds,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CUSTOMER_DISPUTE =
              T.let(
                :failed_customer_dispute,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CUSTOMER_DISPUTE =
              T.let(
                :reversed_customer_dispute,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CLOSED_BANK_ACCOUNT =
              T.let(
                :failed_closed_bank_account,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CLOSED_BANK_ACCOUNT =
              T.let(
                :reversed_closed_bank_account,
                Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PayoutV1::Data::Config::SandboxOutcome::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The current status of the payout.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Straddle::PayoutV1::Data::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(:created, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          SCHEDULED =
            T.let(:scheduled, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          CANCELLED =
            T.let(:cancelled, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          ON_HOLD =
            T.let(:on_hold, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          PENDING =
            T.let(:pending, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          PAID = T.let(:paid, Straddle::PayoutV1::Data::Status::TaggedSymbol)
          REVERSED =
            T.let(:reversed, Straddle::PayoutV1::Data::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Straddle::PayoutV1::Data::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PayoutV1::Data::StatusHistory,
                Straddle::Internal::AnyHash
              )
            end

          # The time the status change occurred.
          sig { returns(Time) }
          attr_accessor :changed_at

          # A human-readable description of the status.
          sig { returns(String) }
          attr_accessor :message

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          sig do
            returns(
              Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          # This helps in tracking the cause of status updates.
          sig do
            returns(
              Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
            )
          end
          attr_accessor :source

          # The current status of the `charge` or `payout`.
          sig do
            returns(
              Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The status code if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          sig do
            params(
              changed_at: Time,
              message: String,
              reason: Straddle::PayoutV1::Data::StatusHistory::Reason::OrSymbol,
              source: Straddle::PayoutV1::Data::StatusHistory::Source::OrSymbol,
              status: Straddle::PayoutV1::Data::StatusHistory::Status::OrSymbol,
              code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The time the status change occurred.
            changed_at:,
            # A human-readable description of the status.
            message:,
            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            reason:,
            # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
            # This helps in tracking the cause of status updates.
            source:,
            # The current status of the `charge` or `payout`.
            status:,
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
                  Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol,
                source:
                  Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol,
                status:
                  Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol,
                code: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          module Reason
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::PayoutV1::Data::StatusHistory::Reason)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PayoutV1::Data::StatusHistory::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          # This helps in tracking the cause of status updates.
          module Source
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::PayoutV1::Data::StatusHistory::Source)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PayoutV1::Data::StatusHistory::Source::TaggedSymbol
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
                T.all(Symbol, Straddle::PayoutV1::Data::StatusHistory::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            ON_HOLD =
              T.let(
                :on_hold,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PayoutV1::Data::StatusHistory::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The payment rail used for the payout.
        module PaymentRail
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PayoutV1::Data::PaymentRail)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH = T.let(:ach, Straddle::PayoutV1::Data::PaymentRail::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Straddle::PayoutV1::Data::PaymentRail::TaggedSymbol]
            )
          end
          def self.values
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
          T.type_alias { T.all(Symbol, Straddle::PayoutV1::ResponseType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT = T.let(:object, Straddle::PayoutV1::ResponseType::TaggedSymbol)
        ARRAY = T.let(:array, Straddle::PayoutV1::ResponseType::TaggedSymbol)
        ERROR = T.let(:error, Straddle::PayoutV1::ResponseType::TaggedSymbol)
        NONE = T.let(:none, Straddle::PayoutV1::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PayoutV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
