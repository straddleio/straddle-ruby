# typed: strong

module Straddle
  module Models
    class ChargeV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Straddle::ChargeV1, Straddle::Internal::AnyHash) }

      sig { returns(Straddle::ChargeV1::Data) }
      attr_reader :data

      sig { params(data: Straddle::ChargeV1::Data::OrHash).void }
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
      sig { returns(Straddle::ChargeV1::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::ChargeV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::ChargeV1::ResponseType::OrSymbol
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
            data: Straddle::ChargeV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type: Straddle::ChargeV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::ChargeV1::Data, Straddle::Internal::AnyHash)
          end

        # Unique identifier for the charge.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the charge in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        # Configuration options for the charge.
        sig { returns(Straddle::ChargeV1::Data::Config) }
        attr_reader :config

        sig { params(config: Straddle::ChargeV1::Data::Config::OrHash).void }
        attr_writer :config

        # The channel or mechanism through which the payment was authorized. Use
        # `internet` for payments made online or through a mobile app and `signed` for
        # signed agreements where there is a consent form or contract. Use `signed` for
        # PDF signatures.
        sig { returns(Straddle::ChargeV1::Data::ConsentType::TaggedSymbol) }
        attr_accessor :consent_type

        # Timestamp of when the charge was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # The currency of the charge. Only USD is supported.
        sig { returns(String) }
        attr_accessor :currency

        # An arbitrary description for the charge.
        sig { returns(String) }
        attr_accessor :description

        # Information about the device used when the customer authorized the payment.
        sig { returns(Straddle::DeviceInfoV1) }
        attr_reader :device

        sig { params(device: Straddle::DeviceInfoV1::OrHash).void }
        attr_writer :device

        # Unique identifier for the charge in your database. This value must be unique
        # across all charges.
        sig { returns(String) }
        attr_accessor :external_id

        # Funding Ids
        sig { returns(T::Array[String]) }
        attr_accessor :funding_ids

        # Value of the `paykey` used for the charge.
        sig { returns(String) }
        attr_accessor :paykey

        # The desired date on which the payment should be occur. For charges, this means
        # the date you want the customer to be debited on.
        sig { returns(Date) }
        attr_accessor :payment_date

        # The current status of the charge.
        sig { returns(Straddle::ChargeV1::Data::Status::TaggedSymbol) }
        attr_accessor :status

        # Additional details about the current status of the charge.
        sig { returns(Straddle::StatusDetailsV1) }
        attr_reader :status_details

        sig { params(status_details: Straddle::StatusDetailsV1::OrHash).void }
        attr_writer :status_details

        # Status history.
        sig { returns(T::Array[Straddle::ChargeV1::Data::StatusHistory]) }
        attr_accessor :status_history

        # Timestamp of when the charge was last updated.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        # Information about the customer associated with the charge.
        sig { returns(T.nilable(Straddle::CustomerDetailsV1)) }
        attr_reader :customer_details

        sig do
          params(customer_details: Straddle::CustomerDetailsV1::OrHash).void
        end
        attr_writer :customer_details

        # Timestamp of when the charge was effective in the customer's bank account,
        # otherwise known as the date on which the customer is debited.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the charge in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Information about the paykey used for the charge.
        sig { returns(T.nilable(Straddle::PaykeyDetailsV1)) }
        attr_reader :paykey_details

        sig { params(paykey_details: Straddle::PaykeyDetailsV1::OrHash).void }
        attr_writer :paykey_details

        # The payment rail that the charge will be processed through.
        sig do
          returns(
            T.nilable(Straddle::ChargeV1::Data::PaymentRail::TaggedSymbol)
          )
        end
        attr_reader :payment_rail

        sig do
          params(
            payment_rail: Straddle::ChargeV1::Data::PaymentRail::OrSymbol
          ).void
        end
        attr_writer :payment_rail

        # Timestamp of when the charge was processed by Straddle and originated to the
        # payment rail.
        sig { returns(T.nilable(Time)) }
        attr_accessor :processed_at

        sig do
          params(
            id: String,
            amount: Integer,
            config: Straddle::ChargeV1::Data::Config::OrHash,
            consent_type: Straddle::ChargeV1::Data::ConsentType::OrSymbol,
            created_at: T.nilable(Time),
            currency: String,
            description: String,
            device: Straddle::DeviceInfoV1::OrHash,
            external_id: String,
            funding_ids: T::Array[String],
            paykey: String,
            payment_date: Date,
            status: Straddle::ChargeV1::Data::Status::OrSymbol,
            status_details: Straddle::StatusDetailsV1::OrHash,
            status_history:
              T::Array[Straddle::ChargeV1::Data::StatusHistory::OrHash],
            updated_at: T.nilable(Time),
            customer_details: Straddle::CustomerDetailsV1::OrHash,
            effective_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetailsV1::OrHash,
            payment_rail: Straddle::ChargeV1::Data::PaymentRail::OrSymbol,
            processed_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the charge.
          id:,
          # The amount of the charge in cents.
          amount:,
          # Configuration options for the charge.
          config:,
          # The channel or mechanism through which the payment was authorized. Use
          # `internet` for payments made online or through a mobile app and `signed` for
          # signed agreements where there is a consent form or contract. Use `signed` for
          # PDF signatures.
          consent_type:,
          # Timestamp of when the charge was created.
          created_at:,
          # The currency of the charge. Only USD is supported.
          currency:,
          # An arbitrary description for the charge.
          description:,
          # Information about the device used when the customer authorized the payment.
          device:,
          # Unique identifier for the charge in your database. This value must be unique
          # across all charges.
          external_id:,
          # Funding Ids
          funding_ids:,
          # Value of the `paykey` used for the charge.
          paykey:,
          # The desired date on which the payment should be occur. For charges, this means
          # the date you want the customer to be debited on.
          payment_date:,
          # The current status of the charge.
          status:,
          # Additional details about the current status of the charge.
          status_details:,
          # Status history.
          status_history:,
          # Timestamp of when the charge was last updated.
          updated_at:,
          # Information about the customer associated with the charge.
          customer_details: nil,
          # Timestamp of when the charge was effective in the customer's bank account,
          # otherwise known as the date on which the customer is debited.
          effective_at: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the charge in a structured format.
          metadata: nil,
          # Information about the paykey used for the charge.
          paykey_details: nil,
          # The payment rail that the charge will be processed through.
          payment_rail: nil,
          # Timestamp of when the charge was processed by Straddle and originated to the
          # payment rail.
          processed_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              config: Straddle::ChargeV1::Data::Config,
              consent_type: Straddle::ChargeV1::Data::ConsentType::TaggedSymbol,
              created_at: T.nilable(Time),
              currency: String,
              description: String,
              device: Straddle::DeviceInfoV1,
              external_id: String,
              funding_ids: T::Array[String],
              paykey: String,
              payment_date: Date,
              status: Straddle::ChargeV1::Data::Status::TaggedSymbol,
              status_details: Straddle::StatusDetailsV1,
              status_history: T::Array[Straddle::ChargeV1::Data::StatusHistory],
              updated_at: T.nilable(Time),
              customer_details: Straddle::CustomerDetailsV1,
              effective_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, String]),
              paykey_details: Straddle::PaykeyDetailsV1,
              payment_rail: Straddle::ChargeV1::Data::PaymentRail::TaggedSymbol,
              processed_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeV1::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          # Defines whether to check the customer's balance before processing the charge.
          sig do
            returns(
              Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol
            )
          end
          attr_accessor :balance_check

          # Payment will simulate processing if not Standard.
          sig do
            returns(
              T.nilable(
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::ChargeV1::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          # Configuration options for the charge.
          sig do
            params(
              balance_check:
                Straddle::ChargeV1::Data::Config::BalanceCheck::OrSymbol,
              sandbox_outcome:
                Straddle::ChargeV1::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Defines whether to check the customer's balance before processing the charge.
            balance_check:,
            # Payment will simulate processing if not Standard.
            sandbox_outcome: nil
          )
          end

          sig do
            override.returns(
              {
                balance_check:
                  Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol,
                sandbox_outcome:
                  Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Defines whether to check the customer's balance before processing the charge.
          module BalanceCheck
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::ChargeV1::Data::Config::BalanceCheck)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRED =
              T.let(
                :required,
                Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol
              )
            ENABLED =
              T.let(
                :enabled,
                Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeV1::Data::Config::BalanceCheck::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Payment will simulate processing if not Standard.
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::ChargeV1::Data::Config::SandboxOutcome)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ON_HOLD_DAILY_LIMIT =
              T.let(
                :on_hold_daily_limit,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_FRAUD_RISK =
              T.let(
                :cancelled_for_fraud_risk,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_BALANCE_CHECK =
              T.let(
                :cancelled_for_balance_check,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_INSUFFICIENT_FUNDS =
              T.let(
                :failed_insufficient_funds,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_INSUFFICIENT_FUNDS =
              T.let(
                :reversed_insufficient_funds,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CUSTOMER_DISPUTE =
              T.let(
                :failed_customer_dispute,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CUSTOMER_DISPUTE =
              T.let(
                :reversed_customer_dispute,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CLOSED_BANK_ACCOUNT =
              T.let(
                :failed_closed_bank_account,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CLOSED_BANK_ACCOUNT =
              T.let(
                :reversed_closed_bank_account,
                Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeV1::Data::Config::SandboxOutcome::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The channel or mechanism through which the payment was authorized. Use
        # `internet` for payments made online or through a mobile app and `signed` for
        # signed agreements where there is a consent form or contract. Use `signed` for
        # PDF signatures.
        module ConsentType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::ChargeV1::Data::ConsentType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNET =
            T.let(
              :internet,
              Straddle::ChargeV1::Data::ConsentType::TaggedSymbol
            )
          SIGNED =
            T.let(:signed, Straddle::ChargeV1::Data::ConsentType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Straddle::ChargeV1::Data::ConsentType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The current status of the charge.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Straddle::ChargeV1::Data::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(:created, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          SCHEDULED =
            T.let(:scheduled, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          CANCELLED =
            T.let(:cancelled, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          ON_HOLD =
            T.let(:on_hold, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          PENDING =
            T.let(:pending, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          PAID = T.let(:paid, Straddle::ChargeV1::Data::Status::TaggedSymbol)
          REVERSED =
            T.let(:reversed, Straddle::ChargeV1::Data::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Straddle::ChargeV1::Data::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeV1::Data::StatusHistory,
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
              Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          # This helps in tracking the cause of status updates.
          sig do
            returns(
              Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
            )
          end
          attr_accessor :source

          # The current status of the `charge` or `payout`.
          sig do
            returns(
              Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The status code if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          # A record of the charge's status changes over time.
          sig do
            params(
              changed_at: Time,
              message: String,
              reason: Straddle::ChargeV1::Data::StatusHistory::Reason::OrSymbol,
              source: Straddle::ChargeV1::Data::StatusHistory::Source::OrSymbol,
              status: Straddle::ChargeV1::Data::StatusHistory::Status::OrSymbol,
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
                  Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol,
                source:
                  Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol,
                status:
                  Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol,
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
                T.all(Symbol, Straddle::ChargeV1::Data::StatusHistory::Reason)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeV1::Data::StatusHistory::Reason::TaggedSymbol
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
                T.all(Symbol, Straddle::ChargeV1::Data::StatusHistory::Source)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeV1::Data::StatusHistory::Source::TaggedSymbol
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
                T.all(Symbol, Straddle::ChargeV1::Data::StatusHistory::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            ON_HOLD =
              T.let(
                :on_hold,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeV1::Data::StatusHistory::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The payment rail that the charge will be processed through.
        module PaymentRail
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::ChargeV1::Data::PaymentRail)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH = T.let(:ach, Straddle::ChargeV1::Data::PaymentRail::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Straddle::ChargeV1::Data::PaymentRail::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Straddle::ChargeV1::ResponseType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT = T.let(:object, Straddle::ChargeV1::ResponseType::TaggedSymbol)
        ARRAY = T.let(:array, Straddle::ChargeV1::ResponseType::TaggedSymbol)
        ERROR = T.let(:error, Straddle::ChargeV1::ResponseType::TaggedSymbol)
        NONE = T.let(:none, Straddle::ChargeV1::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::ChargeV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
