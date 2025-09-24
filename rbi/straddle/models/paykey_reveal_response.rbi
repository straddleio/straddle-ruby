# typed: strong

module Straddle
  module Models
    class PaykeyRevealResponse < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::Models::PaykeyRevealResponse,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::Models::PaykeyRevealResponse::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::Models::PaykeyRevealResponse::Data::OrHash).void
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
          Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
        )
      end
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::Models::PaykeyRevealResponse::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type:
            Straddle::Models::PaykeyRevealResponse::ResponseType::OrSymbol
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
            data: Straddle::Models::PaykeyRevealResponse::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Models::PaykeyRevealResponse::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the paykey.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Straddle::Models::PaykeyRevealResponse::Data::Config) }
        attr_reader :config

        sig do
          params(
            config: Straddle::Models::PaykeyRevealResponse::Data::Config::OrHash
          ).void
        end
        attr_writer :config

        # Timestamp of when the paykey was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Human-readable label that combines the bank name and masked account number to
        # help easility represent this paykey in a UI
        sig { returns(String) }
        attr_accessor :label

        # The tokenized paykey value. This token is used to create payments and should be
        # stored securely.
        sig { returns(String) }
        attr_accessor :paykey

        sig do
          returns(
            Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
          )
        end
        attr_accessor :source

        sig do
          returns(
            Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp of the most recent update to the paykey.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(
            T.nilable(Straddle::Models::PaykeyRevealResponse::Data::Balance)
          )
        end
        attr_reader :balance

        sig do
          params(
            balance:
              Straddle::Models::PaykeyRevealResponse::Data::Balance::OrHash
          ).void
        end
        attr_writer :balance

        sig do
          returns(
            T.nilable(Straddle::Models::PaykeyRevealResponse::Data::BankData)
          )
        end
        attr_reader :bank_data

        sig do
          params(
            bank_data:
              Straddle::Models::PaykeyRevealResponse::Data::BankData::OrHash
          ).void
        end
        attr_writer :bank_data

        # Unique identifier of the related customer object.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # Expiration date and time of the paykey, if applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Name of the financial institution.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the paykey in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig do
          returns(
            T.nilable(
              Straddle::Models::PaykeyRevealResponse::Data::StatusDetails
            )
          )
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        sig do
          params(
            id: String,
            config:
              Straddle::Models::PaykeyRevealResponse::Data::Config::OrHash,
            created_at: Time,
            label: String,
            paykey: String,
            source:
              Straddle::Models::PaykeyRevealResponse::Data::Source::OrSymbol,
            status:
              Straddle::Models::PaykeyRevealResponse::Data::Status::OrSymbol,
            updated_at: Time,
            balance:
              Straddle::Models::PaykeyRevealResponse::Data::Balance::OrHash,
            bank_data:
              Straddle::Models::PaykeyRevealResponse::Data::BankData::OrHash,
            customer_id: T.nilable(String),
            expires_at: T.nilable(Time),
            institution_name: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            status_details:
              Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the paykey.
          id:,
          config:,
          # Timestamp of when the paykey was created.
          created_at:,
          # Human-readable label that combines the bank name and masked account number to
          # help easility represent this paykey in a UI
          label:,
          # The tokenized paykey value. This token is used to create payments and should be
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
              config: Straddle::Models::PaykeyRevealResponse::Data::Config,
              created_at: Time,
              label: String,
              paykey: String,
              source:
                Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol,
              status:
                Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol,
              updated_at: Time,
              balance: Straddle::Models::PaykeyRevealResponse::Data::Balance,
              bank_data: Straddle::Models::PaykeyRevealResponse::Data::BankData,
              customer_id: T.nilable(String),
              expires_at: T.nilable(Time),
              institution_name: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              status_details:
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Models::PaykeyRevealResponse::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                sandbox_outcome:
                  Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::PaykeyRevealResponse::Data::Config::SandboxOutcome::TaggedSymbol
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
              T.all(
                Symbol,
                Straddle::Models::PaykeyRevealResponse::Data::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BANK_ACCOUNT =
            T.let(
              :bank_account,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )
          STRADDLE =
            T.let(
              :straddle,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )
          MX =
            T.let(
              :mx,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )
          PLAID =
            T.let(
              :plaid,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )
          TAN =
            T.let(
              :tan,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )
          QUILTT =
            T.let(
              :quiltt,
              Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::PaykeyRevealResponse::Data::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Models::PaykeyRevealResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::PaykeyRevealResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Balance < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Models::PaykeyRevealResponse::Data::Balance,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol
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
                Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::OrSymbol,
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
                  Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol,
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
                T.all(
                  Symbol,
                  Straddle::Models::PaykeyRevealResponse::Data::Balance::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::PaykeyRevealResponse::Data::Balance::Status::TaggedSymbol
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
                Straddle::Models::PaykeyRevealResponse::Data::BankData,
                Straddle::Internal::AnyHash
              )
            end

          # Bank account number. This value is masked by default for security reasons. Use
          # the /unmask endpoint to access the unmasked value.
          sig { returns(String) }
          attr_accessor :account_number

          sig do
            returns(
              Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::TaggedSymbol
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
                Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::OrSymbol,
              routing_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Bank account number. This value is masked by default for security reasons. Use
            # the /unmask endpoint to access the unmasked value.
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
                  Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::TaggedSymbol,
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
                  Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECKING =
              T.let(
                :checking,
                Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::TaggedSymbol
              )
            SAVINGS =
              T.let(
                :savings,
                Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::PaykeyRevealResponse::Data::BankData::AccountType::TaggedSymbol
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
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails,
                Straddle::Internal::AnyHash
              )
            end

          # The time the status change occurred.
          sig { returns(Time) }
          attr_accessor :changed_at

          # A human-readable description of the current status.
          sig { returns(String) }
          attr_accessor :message

          # A machine-readable identifier for the specific status, useful for programmatic
          # handling.
          sig do
            returns(
              Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          # This helps in tracking the cause of status updates.
          sig do
            returns(
              Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
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
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::OrSymbol,
              source:
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::OrSymbol,
              code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The time the status change occurred.
            changed_at:,
            # A human-readable description of the current status.
            message:,
            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            reason:,
            # Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
            # This helps in tracking the cause of status updates.
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
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol,
                source:
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol,
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
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Identifies the origin of the status change (e.g., 'bank_decline', 'watchtower').
          # This helps in tracking the cause of status updates.
          module Source
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Models::PaykeyRevealResponse::Data::StatusDetails::Source::TaggedSymbol
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
            T.all(Symbol, Straddle::Models::PaykeyRevealResponse::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::Models::PaykeyRevealResponse::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
