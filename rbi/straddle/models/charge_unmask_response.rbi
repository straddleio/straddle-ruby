# typed: strong

module Straddle
  module Models
    class ChargeUnmaskResponse < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::Models::ChargeUnmaskResponse,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::Models::ChargeUnmaskResponse::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::Models::ChargeUnmaskResponse::Data::OrHash).void
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
        returns(
          Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
        )
      end
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::Models::ChargeUnmaskResponse::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type:
            Straddle::Models::ChargeUnmaskResponse::ResponseType::OrSymbol
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
            data: Straddle::Models::ChargeUnmaskResponse::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Models::ChargeUnmaskResponse::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Id.
        sig { returns(String) }
        attr_accessor :id

        # Amount.
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Straddle::Models::ChargeUnmaskResponse::Data::Config) }
        attr_reader :config

        sig do
          params(
            config: Straddle::Models::ChargeUnmaskResponse::Data::Config::OrHash
          ).void
        end
        attr_writer :config

        # The channel or mechanism through which the payment was authorized. Use
        # `internet` for payments made online or through a mobile app and `signed` for
        # signed agreements where there is a consent form or contract. Use `signed` for
        # PDF signatures.
        sig do
          returns(
            Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::TaggedSymbol
          )
        end
        attr_accessor :consent_type

        # Created at.
        sig { returns(Time) }
        attr_accessor :created_at

        # Currency.
        sig { returns(String) }
        attr_accessor :currency

        # Description.
        sig { returns(String) }
        attr_accessor :description

        sig { returns(Straddle::Models::ChargeUnmaskResponse::Data::Device) }
        attr_reader :device

        sig do
          params(
            device: Straddle::Models::ChargeUnmaskResponse::Data::Device::OrHash
          ).void
        end
        attr_writer :device

        # External id.
        sig { returns(String) }
        attr_accessor :external_id

        # Funding Ids
        sig { returns(T::Array[String]) }
        attr_accessor :funding_ids

        # Paykey.
        sig { returns(String) }
        attr_accessor :paykey

        # Payment date.
        sig { returns(Date) }
        attr_accessor :payment_date

        # The current status of the `charge` or `payout`.
        sig do
          returns(
            Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(Straddle::StatusDetailsV1) }
        attr_reader :status_details

        sig { params(status_details: Straddle::StatusDetailsV1::OrHash).void }
        attr_writer :status_details

        # Status history.
        sig do
          returns(
            T::Array[
              Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory
            ]
          )
        end
        attr_accessor :status_history

        # Updated at.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Information about the customer associated with the charge or payout.
        sig { returns(T.nilable(Straddle::CustomerDetailsV1)) }
        attr_reader :customer_details

        sig do
          params(customer_details: Straddle::CustomerDetailsV1::OrHash).void
        end
        attr_writer :customer_details

        # Effective at.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        # Metadata.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig { returns(T.nilable(Straddle::PaykeyDetailsV1)) }
        attr_reader :paykey_details

        sig { params(paykey_details: Straddle::PaykeyDetailsV1::OrHash).void }
        attr_writer :paykey_details

        # The payment rail used for the charge or payout.
        sig do
          returns(
            T.nilable(
              Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::TaggedSymbol
            )
          )
        end
        attr_reader :payment_rail

        sig do
          params(
            payment_rail:
              Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::OrSymbol
          ).void
        end
        attr_writer :payment_rail

        # Processed at.
        sig { returns(T.nilable(Time)) }
        attr_accessor :processed_at

        sig do
          params(
            id: String,
            amount: Integer,
            config:
              Straddle::Models::ChargeUnmaskResponse::Data::Config::OrHash,
            consent_type:
              Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::OrSymbol,
            created_at: Time,
            currency: String,
            description: String,
            device:
              Straddle::Models::ChargeUnmaskResponse::Data::Device::OrHash,
            external_id: String,
            funding_ids: T::Array[String],
            paykey: String,
            payment_date: Date,
            status:
              Straddle::Models::ChargeUnmaskResponse::Data::Status::OrSymbol,
            status_details: Straddle::StatusDetailsV1::OrHash,
            status_history:
              T::Array[
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::OrHash
              ],
            updated_at: Time,
            customer_details: Straddle::CustomerDetailsV1::OrHash,
            effective_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetailsV1::OrHash,
            payment_rail:
              Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::OrSymbol,
            processed_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Id.
          id:,
          # Amount.
          amount:,
          config:,
          # The channel or mechanism through which the payment was authorized. Use
          # `internet` for payments made online or through a mobile app and `signed` for
          # signed agreements where there is a consent form or contract. Use `signed` for
          # PDF signatures.
          consent_type:,
          # Created at.
          created_at:,
          # Currency.
          currency:,
          # Description.
          description:,
          device:,
          # External id.
          external_id:,
          # Funding Ids
          funding_ids:,
          # Paykey.
          paykey:,
          # Payment date.
          payment_date:,
          # The current status of the `charge` or `payout`.
          status:,
          status_details:,
          # Status history.
          status_history:,
          # Updated at.
          updated_at:,
          # Information about the customer associated with the charge or payout.
          customer_details: nil,
          # Effective at.
          effective_at: nil,
          # Metadata.
          metadata: nil,
          paykey_details: nil,
          # The payment rail used for the charge or payout.
          payment_rail: nil,
          # Processed at.
          processed_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              config: Straddle::Models::ChargeUnmaskResponse::Data::Config,
              consent_type:
                Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::TaggedSymbol,
              created_at: Time,
              currency: String,
              description: String,
              device: Straddle::Models::ChargeUnmaskResponse::Data::Device,
              external_id: String,
              funding_ids: T::Array[String],
              paykey: String,
              payment_date: Date,
              status:
                Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol,
              status_details: Straddle::StatusDetailsV1,
              status_history:
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory
                ],
              updated_at: Time,
              customer_details: Straddle::CustomerDetailsV1,
              effective_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, String]),
              paykey_details: Straddle::PaykeyDetailsV1,
              payment_rail:
                Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::TaggedSymbol,
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
                Straddle::Models::ChargeUnmaskResponse::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          # Defines whether to check the customer's balance before processing the charge.
          sig do
            returns(
              Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol
            )
          end
          attr_accessor :balance_check

          # Payment will simulate processing if not Standard.
          sig do
            returns(
              T.nilable(
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              balance_check:
                Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::OrSymbol,
              sandbox_outcome:
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::OrSymbol
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
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol,
                sandbox_outcome:
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
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
                T.all(
                  Symbol,
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REQUIRED =
              T.let(
                :required,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol
              )
            ENABLED =
              T.let(
                :enabled,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::BalanceCheck::TaggedSymbol
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
                T.all(
                  Symbol,
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ON_HOLD_DAILY_LIMIT =
              T.let(
                :on_hold_daily_limit,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_FRAUD_RISK =
              T.let(
                :cancelled_for_fraud_risk,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            CANCELLED_FOR_BALANCE_CHECK =
              T.let(
                :cancelled_for_balance_check,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_INSUFFICIENT_FUNDS =
              T.let(
                :failed_insufficient_funds,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_INSUFFICIENT_FUNDS =
              T.let(
                :reversed_insufficient_funds,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CUSTOMER_DISPUTE =
              T.let(
                :failed_customer_dispute,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CUSTOMER_DISPUTE =
              T.let(
                :reversed_customer_dispute,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            FAILED_CLOSED_BANK_ACCOUNT =
              T.let(
                :failed_closed_bank_account,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVERSED_CLOSED_BANK_ACCOUNT =
              T.let(
                :reversed_closed_bank_account,
                Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::Config::SandboxOutcome::TaggedSymbol
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
              T.all(
                Symbol,
                Straddle::Models::ChargeUnmaskResponse::Data::ConsentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNET =
            T.let(
              :internet,
              Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::TaggedSymbol
            )
          SIGNED =
            T.let(
              :signed,
              Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::ChargeUnmaskResponse::Data::ConsentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Device < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Models::ChargeUnmaskResponse::Data::Device,
                Straddle::Internal::AnyHash
              )
            end

          # Ip address.
          sig { returns(String) }
          attr_accessor :ip_address

          sig { params(ip_address: String).returns(T.attached_class) }
          def self.new(
            # Ip address.
            ip_address:
          )
          end

          sig { override.returns({ ip_address: String }) }
          def to_hash
          end
        end

        # The current status of the `charge` or `payout`.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Models::ChargeUnmaskResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::ChargeUnmaskResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory,
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
              Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
          # This helps in tracking the cause of status updates.
          sig do
            returns(
              Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
            )
          end
          attr_accessor :source

          # The current status of the `charge` or `payout`.
          sig do
            returns(
              Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
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
              reason:
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::OrSymbol,
              source:
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::OrSymbol,
              status:
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::OrSymbol,
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
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol,
                source:
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol,
                status:
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol,
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
                T.all(
                  Symbol,
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Reason::TaggedSymbol
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
                T.all(
                  Symbol,
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Source::TaggedSymbol
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
                T.all(
                  Symbol,
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            ON_HOLD =
              T.let(
                :on_hold,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::ChargeUnmaskResponse::Data::StatusHistory::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The payment rail used for the charge or payout.
        module PaymentRail
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::ChargeUnmaskResponse::Data::PaymentRail::TaggedSymbol
              ]
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
          T.type_alias do
            T.all(Symbol, Straddle::Models::ChargeUnmaskResponse::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::Models::ChargeUnmaskResponse::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
