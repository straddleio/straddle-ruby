# typed: strong

module Straddle
  module Models
    module Paykeys
      class ReviewGetResponse < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Models::Paykeys::ReviewGetResponse,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Models::Paykeys::ReviewGetResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Straddle::Models::Paykeys::ReviewGetResponse::Data::OrHash
          ).void
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
            Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
          )
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Models::Paykeys::ReviewGetResponse::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::OrSymbol
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
              data: Straddle::Models::Paykeys::ReviewGetResponse::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Models::Paykeys::ReviewGetResponse::Data,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails
            )
          end
          attr_reader :paykey_details

          sig do
            params(
              paykey_details:
                Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::OrHash
            ).void
          end
          attr_writer :paykey_details

          sig do
            returns(
              T.nilable(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails
              )
            )
          end
          attr_reader :verification_details

          sig do
            params(
              verification_details:
                Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::OrHash
            ).void
          end
          attr_writer :verification_details

          sig do
            params(
              paykey_details:
                Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::OrHash,
              verification_details:
                Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::OrHash
            ).returns(T.attached_class)
          end
          def self.new(paykey_details:, verification_details: nil)
          end

          sig do
            override.returns(
              {
                paykey_details:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails,
                verification_details:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails
              }
            )
          end
          def to_hash
          end

          class PaykeyDetails < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails,
                  Straddle::Internal::AnyHash
                )
              end

            # Unique identifier for the paykey.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config
              )
            end
            attr_reader :config

            sig do
              params(
                config:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::OrHash
              ).void
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

            sig do
              returns(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
              )
            end
            attr_accessor :source

            sig do
              returns(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of the most recent update to the paykey.
            sig { returns(Time) }
            attr_accessor :updated_at

            sig do
              returns(
                T.nilable(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance
                )
              )
            end
            attr_reader :balance

            sig do
              params(
                balance:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::OrHash
              ).void
            end
            attr_writer :balance

            sig do
              returns(
                T.nilable(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData
                )
              )
            end
            attr_reader :bank_data

            sig do
              params(
                bank_data:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::OrHash
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
              returns(
                T.nilable(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails
                )
              )
            end
            attr_reader :status_details

            sig do
              params(
                status_details:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::OrHash
              ).void
            end
            attr_writer :status_details

            sig do
              params(
                id: String,
                config:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::OrHash,
                created_at: Time,
                label: String,
                paykey: String,
                source:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::OrSymbol,
                status:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::OrSymbol,
                updated_at: Time,
                balance:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::OrHash,
                bank_data:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::OrHash,
                customer_id: T.nilable(String),
                expires_at: T.nilable(Time),
                external_id: T.nilable(String),
                institution_name: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, String]),
                status_details:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::OrHash
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
                  config:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config,
                  created_at: Time,
                  label: String,
                  paykey: String,
                  source:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol,
                  status:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol,
                  updated_at: Time,
                  balance:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance,
                  bank_data:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData,
                  customer_id: T.nilable(String),
                  expires_at: T.nilable(Time),
                  external_id: T.nilable(String),
                  institution_name: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, String]),
                  status_details:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails
                }
              )
            end
            def to_hash
            end

            class Config < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config,
                    Straddle::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                )
              end
              attr_reader :processing_method

              sig do
                params(
                  processing_method:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::OrSymbol
                ).void
              end
              attr_writer :processing_method

              sig do
                returns(
                  T.nilable(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                )
              end
              attr_reader :sandbox_outcome

              sig do
                params(
                  sandbox_outcome:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::OrSymbol
                ).void
              end
              attr_writer :sandbox_outcome

              sig do
                params(
                  processing_method:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::OrSymbol,
                  sandbox_outcome:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(processing_method: nil, sandbox_outcome: nil)
              end

              sig do
                override.returns(
                  {
                    processing_method:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol,
                    sandbox_outcome:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INLINE =
                  T.let(
                    :inline,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                BACKGROUND =
                  T.let(
                    :background,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                SKIP =
                  T.let(
                    :skip,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::ProcessingMethod::TaggedSymbol
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                STANDARD =
                  T.let(
                    :standard,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                ACTIVE =
                  T.let(
                    :active,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                REJECTED =
                  T.let(
                    :rejected,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Config::SandboxOutcome::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BANK_ACCOUNT =
                T.let(
                  :bank_account,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )
              STRADDLE =
                T.let(
                  :straddle,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )
              MX =
                T.let(
                  :mx,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )
              PLAID =
                T.let(
                  :plaid,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )
              TAN =
                T.let(
                  :tan,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )
              QUILTT =
                T.let(
                  :quiltt,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Source::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
                )
              ACTIVE =
                T.let(
                  :active,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
                )
              REJECTED =
                T.let(
                  :rejected,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
                )
              REVIEW =
                T.let(
                  :review,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Status::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance,
                    Straddle::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::OrSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :failed,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::Balance::Status::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData,
                    Straddle::Internal::AnyHash
                  )
                end

              # Bank account number. This value is masked by default for security reasons. Use
              # the /unmask endpoint to access the unmasked value.
              sig { returns(String) }
              attr_accessor :account_number

              sig do
                returns(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::OrSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::TaggedSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CHECKING =
                  T.let(
                    :checking,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::TaggedSymbol
                  )
                SAVINGS =
                  T.let(
                    :savings,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::BankData::AccountType::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails,
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
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                )
              end
              attr_accessor :reason

              sig do
                returns(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
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
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::OrSymbol,
                  source:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::OrSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol,
                    source:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol,
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INSUFFICIENT_FUNDS =
                  T.let(
                    :insufficient_funds,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                CLOSED_BANK_ACCOUNT =
                  T.let(
                    :closed_bank_account,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                INVALID_BANK_ACCOUNT =
                  T.let(
                    :invalid_bank_account,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                INVALID_ROUTING =
                  T.let(
                    :invalid_routing,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                DISPUTED =
                  T.let(
                    :disputed,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                PAYMENT_STOPPED =
                  T.let(
                    :payment_stopped,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                OWNER_DECEASED =
                  T.let(
                    :owner_deceased,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                FROZEN_BANK_ACCOUNT =
                  T.let(
                    :frozen_bank_account,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                RISK_REVIEW =
                  T.let(
                    :risk_review,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                FRAUDULENT =
                  T.let(
                    :fraudulent,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                DUPLICATE_ENTRY =
                  T.let(
                    :duplicate_entry,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                INVALID_PAYKEY =
                  T.let(
                    :invalid_paykey,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                PAYMENT_BLOCKED =
                  T.let(
                    :payment_blocked,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                AMOUNT_TOO_LARGE =
                  T.let(
                    :amount_too_large,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                TOO_MANY_ATTEMPTS =
                  T.let(
                    :too_many_attempts,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                INTERNAL_SYSTEM_ERROR =
                  T.let(
                    :internal_system_error,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                USER_REQUEST =
                  T.let(
                    :user_request,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                OK =
                  T.let(
                    :ok,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                OTHER_NETWORK_RETURN =
                  T.let(
                    :other_network_return,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )
                PAYOUT_REFUSED =
                  T.let(
                    :payout_refused,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Reason::TaggedSymbol
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
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                WATCHTOWER =
                  T.let(
                    :watchtower,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                  )
                BANK_DECLINE =
                  T.let(
                    :bank_decline,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                  )
                CUSTOMER_DISPUTE =
                  T.let(
                    :customer_dispute,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                  )
                USER_ACTION =
                  T.let(
                    :user_action,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                  )
                SYSTEM =
                  T.let(
                    :system,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::PaykeyDetails::StatusDetails::Source::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class VerificationDetails < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails,
                  Straddle::Internal::AnyHash
                )
              end

            # Unique identifier for the verification details.
            sig { returns(String) }
            attr_accessor :id

            sig do
              returns(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown
              )
            end
            attr_reader :breakdown

            sig do
              params(
                breakdown:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::OrHash
              ).void
            end
            attr_writer :breakdown

            # Timestamp of when the verification was initiated.
            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol
              )
            end
            attr_accessor :decision

            # Dictionary of all messages from the paykey verification process.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :messages

            # Timestamp of the most recent update to the verification details.
            sig { returns(Time) }
            attr_accessor :updated_at

            sig do
              params(
                id: String,
                breakdown:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::OrHash,
                created_at: Time,
                decision:
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::OrSymbol,
                messages: T::Hash[Symbol, String],
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the verification details.
              id:,
              breakdown:,
              # Timestamp of when the verification was initiated.
              created_at:,
              decision:,
              # Dictionary of all messages from the paykey verification process.
              messages:,
              # Timestamp of the most recent update to the verification details.
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  breakdown:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown,
                  created_at: Time,
                  decision:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol,
                  messages: T::Hash[Symbol, String],
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            class Breakdown < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown,
                    Straddle::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation
                  )
                )
              end
              attr_reader :account_validation

              sig do
                params(
                  account_validation:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::OrHash
                ).void
              end
              attr_writer :account_validation

              sig do
                returns(
                  T.nilable(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch
                  )
                )
              end
              attr_reader :name_match

              sig do
                params(
                  name_match:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::OrHash
                ).void
              end
              attr_writer :name_match

              sig do
                params(
                  account_validation:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::OrHash,
                  name_match:
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::OrHash
                ).returns(T.attached_class)
              end
              def self.new(account_validation: nil, name_match: nil)
              end

              sig do
                override.returns(
                  {
                    account_validation:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation,
                    name_match:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch
                  }
                )
              end
              def to_hash
              end

              class AccountValidation < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation,
                      Straddle::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :codes

                sig do
                  returns(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol
                  )
                end
                attr_accessor :decision

                sig { returns(T.nilable(String)) }
                attr_accessor :reason

                sig do
                  params(
                    codes: T::Array[String],
                    decision:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::OrSymbol,
                    reason: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(codes:, decision:, reason: nil)
                end

                sig do
                  override.returns(
                    {
                      codes: T::Array[String],
                      decision:
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol,
                      reason: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                module Decision
                  extend Straddle::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ACCEPT =
                    T.let(
                      :accept,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol
                    )
                  REJECT =
                    T.let(
                      :reject,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol
                    )
                  REVIEW =
                    T.let(
                      :review,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::AccountValidation::Decision::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class NameMatch < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch,
                      Straddle::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :codes

                sig do
                  returns(
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol
                  )
                end
                attr_accessor :decision

                sig { returns(T.nilable(Float)) }
                attr_accessor :correlation_score

                sig { returns(T.nilable(String)) }
                attr_accessor :customer_name

                sig { returns(T.nilable(String)) }
                attr_accessor :matched_name

                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :names_on_account

                sig { returns(T.nilable(String)) }
                attr_accessor :reason

                sig do
                  params(
                    codes: T::Array[String],
                    decision:
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::OrSymbol,
                    correlation_score: T.nilable(Float),
                    customer_name: T.nilable(String),
                    matched_name: T.nilable(String),
                    names_on_account: T.nilable(T::Array[String]),
                    reason: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  codes:,
                  decision:,
                  correlation_score: nil,
                  customer_name: nil,
                  matched_name: nil,
                  names_on_account: nil,
                  reason: nil
                )
                end

                sig do
                  override.returns(
                    {
                      codes: T::Array[String],
                      decision:
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol,
                      correlation_score: T.nilable(Float),
                      customer_name: T.nilable(String),
                      matched_name: T.nilable(String),
                      names_on_account: T.nilable(T::Array[String]),
                      reason: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                module Decision
                  extend Straddle::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ACCEPT =
                    T.let(
                      :accept,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol
                    )
                  REJECT =
                    T.let(
                      :reject,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol
                    )
                  REVIEW =
                    T.let(
                      :review,
                      Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Breakdown::NameMatch::Decision::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            module Decision
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCEPT =
                T.let(
                  :accept,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol
                )
              REJECT =
                T.let(
                  :reject,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol
                )
              REVIEW =
                T.let(
                  :review,
                  Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Models::Paykeys::ReviewGetResponse::Data::VerificationDetails::Decision::TaggedSymbol
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
              T.all(
                Symbol,
                Straddle::Models::Paykeys::ReviewGetResponse::ResponseType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Models::Paykeys::ReviewGetResponse::ResponseType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
