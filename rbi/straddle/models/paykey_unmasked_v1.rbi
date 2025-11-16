# typed: strong

module Straddle
  module Models
    class PaykeyUnmaskedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyUnmaskedV1, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::PaykeyUnmaskedV1::Data) }
      attr_reader :data

      sig { params(data: Straddle::PaykeyUnmaskedV1::Data::OrHash).void }
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
      sig { returns(Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::PaykeyUnmaskedV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::PaykeyUnmaskedV1::ResponseType::OrSymbol
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
            data: Straddle::PaykeyUnmaskedV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::PaykeyUnmaskedV1::Data, Straddle::Internal::AnyHash)
          end

        # Unique identifier for the paykey.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Straddle::PaykeyUnmaskedV1::Data::Config) }
        attr_reader :config

        sig do
          params(config: Straddle::PaykeyUnmaskedV1::Data::Config::OrHash).void
        end
        attr_writer :config

        # Timestamp of when the paykey was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Human-readable label used to represent this paykey in a UI.
        sig { returns(String) }
        attr_accessor :label

        # The tokenized paykey value. This value is used to create payments and should be
        # stored securely.
        sig { returns(String) }
        attr_accessor :paykey

        sig { returns(Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol) }
        attr_accessor :source

        sig { returns(Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol) }
        attr_accessor :status

        # Timestamp of the most recent update to the paykey.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Straddle::PaykeyUnmaskedV1::Data::Balance)) }
        attr_reader :balance

        sig do
          params(
            balance: Straddle::PaykeyUnmaskedV1::Data::Balance::OrHash
          ).void
        end
        attr_writer :balance

        sig { returns(T.nilable(Straddle::PaykeyUnmaskedV1::Data::BankData)) }
        attr_reader :bank_data

        sig do
          params(
            bank_data: Straddle::PaykeyUnmaskedV1::Data::BankData::OrHash
          ).void
        end
        attr_writer :bank_data

        # Unique identifier of the related customer object.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # Expiration date and time of the paykey, if applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Unique identifier for the paykey in your database, used for cross-referencing
        # between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Name of the financial institution.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the paykey in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig do
          returns(T.nilable(Straddle::PaykeyUnmaskedV1::Data::StatusDetails))
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::PaykeyUnmaskedV1::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        sig do
          params(
            id: String,
            config: Straddle::PaykeyUnmaskedV1::Data::Config::OrHash,
            created_at: Time,
            label: String,
            paykey: String,
            source: Straddle::PaykeyUnmaskedV1::Data::Source::OrSymbol,
            status: Straddle::PaykeyUnmaskedV1::Data::Status::OrSymbol,
            updated_at: Time,
            balance: Straddle::PaykeyUnmaskedV1::Data::Balance::OrHash,
            bank_data: Straddle::PaykeyUnmaskedV1::Data::BankData::OrHash,
            customer_id: T.nilable(String),
            expires_at: T.nilable(Time),
            external_id: T.nilable(String),
            institution_name: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            status_details:
              Straddle::PaykeyUnmaskedV1::Data::StatusDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the paykey.
          id:,
          config:,
          # Timestamp of when the paykey was created.
          created_at:,
          # Human-readable label used to represent this paykey in a UI.
          label:,
          # The tokenized paykey value. This value is used to create payments and should be
          # stored securely.
          paykey:,
          source:,
          status:,
          # Timestamp of the most recent update to the paykey.
          updated_at:,
          balance: nil,
          bank_data: nil,
          # Unique identifier of the related customer object.
          customer_id: nil,
          # Expiration date and time of the paykey, if applicable.
          expires_at: nil,
          # Unique identifier for the paykey in your database, used for cross-referencing
          # between Straddle and your systems.
          external_id: nil,
          # Name of the financial institution.
          institution_name: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the paykey in a structured format.
          metadata: nil,
          status_details: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              config: Straddle::PaykeyUnmaskedV1::Data::Config,
              created_at: Time,
              label: String,
              paykey: String,
              source: Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol,
              status: Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol,
              updated_at: Time,
              balance: Straddle::PaykeyUnmaskedV1::Data::Balance,
              bank_data: Straddle::PaykeyUnmaskedV1::Data::BankData,
              customer_id: T.nilable(String),
              expires_at: T.nilable(Time),
              external_id: T.nilable(String),
              institution_name: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              status_details: Straddle::PaykeyUnmaskedV1::Data::StatusDetails
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyUnmaskedV1::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            )
          end
          attr_reader :processing_method

          sig do
            params(
              processing_method:
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::OrSymbol
            ).void
          end
          attr_writer :processing_method

          sig do
            returns(
              T.nilable(
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              processing_method:
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::OrSymbol,
              sandbox_outcome:
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(processing_method: nil, sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                processing_method:
                  Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol,
                sandbox_outcome:
                  Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module ProcessingMethod
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INLINE =
              T.let(
                :inline,
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            BACKGROUND =
              T.let(
                :background,
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            SKIP =
              T.let(
                :skip,
                Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Source
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaykeyUnmaskedV1::Data::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BANK_ACCOUNT =
            T.let(
              :bank_account,
              Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol
            )
          STRADDLE =
            T.let(
              :straddle,
              Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol
            )
          MX =
            T.let(:mx, Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol)
          PLAID =
            T.let(
              :plaid,
              Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol
            )
          TAN =
            T.let(:tan, Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol)
          QUILTT =
            T.let(
              :quiltt,
              Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::PaykeyUnmaskedV1::Data::Source::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaykeyUnmaskedV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::PaykeyUnmaskedV1::Data::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Balance < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyUnmaskedV1::Data::Balance,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Account Balance when last retrieved
          sig { returns(T.nilable(Integer)) }
          attr_accessor :account_balance

          # Last time account balance was updated.
          sig { returns(T.nilable(Time)) }
          attr_accessor :updated_at

          sig do
            params(
              status:
                Straddle::PaykeyUnmaskedV1::Data::Balance::Status::OrSymbol,
              account_balance: T.nilable(Integer),
              updated_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            status:,
            # Account Balance when last retrieved
            account_balance: nil,
            # Last time account balance was updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                status:
                  Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol,
                account_balance: T.nilable(Integer),
                updated_at: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::PaykeyUnmaskedV1::Data::Balance::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::Balance::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BankData < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyUnmaskedV1::Data::BankData,
                Straddle::Internal::AnyHash
              )
            end

          # The bank account number
          sig { returns(String) }
          attr_accessor :account_number

          sig do
            returns(
              Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::TaggedSymbol
            )
          end
          attr_accessor :account_type

          # The routing number of the bank account.
          sig { returns(String) }
          attr_accessor :routing_number

          sig do
            params(
              account_number: String,
              account_type:
                Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::OrSymbol,
              routing_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The bank account number
            account_number:,
            account_type:,
            # The routing number of the bank account.
            routing_number:
          )
          end

          sig do
            override.returns(
              {
                account_number: String,
                account_type:
                  Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::TaggedSymbol,
                routing_number: String
              }
            )
          end
          def to_hash
          end

          module AccountType
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECKING =
              T.let(
                :checking,
                Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::TaggedSymbol
              )
            SAVINGS =
              T.let(
                :savings,
                Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::BankData::AccountType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StatusDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails,
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
              Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig do
            returns(
              Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
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
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::OrSymbol,
              source:
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::OrSymbol,
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
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol,
                source:
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol,
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
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Reason::TaggedSymbol
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
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyUnmaskedV1::Data::StatusDetails::Source::TaggedSymbol
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
            T.all(Symbol, Straddle::PaykeyUnmaskedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(:object, Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol)
        ARRAY =
          T.let(:array, Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol)
        ERROR =
          T.let(:error, Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol)
        NONE =
          T.let(:none, Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyUnmaskedV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
