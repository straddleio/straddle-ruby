# typed: strong

module Straddle
  module Models
    module Embed
      class LinkedBankAccountV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::LinkedBankAccountV1,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Embed::LinkedBankAccountV1::Data) }
        attr_reader :data

        sig do
          params(data: Straddle::Embed::LinkedBankAccountV1::Data::OrHash).void
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
            Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
          )
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Embed::LinkedBankAccountV1::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Embed::LinkedBankAccountV1::ResponseType::OrSymbol
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
              data: Straddle::Embed::LinkedBankAccountV1::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::LinkedBankAccountV1::Data,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the linked bank account.
          sig { returns(String) }
          attr_accessor :id

          # The unique identifier of the Straddle account related to this bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_id

          sig do
            returns(Straddle::Embed::LinkedBankAccountV1::Data::BankAccount)
          end
          attr_reader :bank_account

          sig do
            params(
              bank_account:
                Straddle::Embed::LinkedBankAccountV1::Data::BankAccount::OrHash
            ).void
          end
          attr_writer :bank_account

          # Timestamp of when the bank account object was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The purposes for the linked bank account.
          sig do
            returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
              ]
            )
          end
          attr_accessor :purposes

          # The current status of the linked bank account.
          sig do
            returns(
              Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            returns(Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail)
          end
          attr_reader :status_detail

          sig do
            params(
              status_detail:
                Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::OrHash
            ).void
          end
          attr_writer :status_detail

          # Timestamp of the most recent update to the linked bank account.
          sig { returns(Time) }
          attr_accessor :updated_at

          # Optional description for the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the linked bank account in a structured format.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          # The unique identifier of the Straddle Platform relatd to this bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :platform_id

          sig do
            params(
              id: String,
              account_id: T.nilable(String),
              bank_account:
                Straddle::Embed::LinkedBankAccountV1::Data::BankAccount::OrHash,
              created_at: Time,
              purposes:
                T::Array[
                  Straddle::Embed::LinkedBankAccountV1::Data::Purpose::OrSymbol
                ],
              status:
                Straddle::Embed::LinkedBankAccountV1::Data::Status::OrSymbol,
              status_detail:
                Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::OrHash,
              updated_at: Time,
              description: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              platform_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the linked bank account.
            id:,
            # The unique identifier of the Straddle account related to this bank account.
            account_id:,
            bank_account:,
            # Timestamp of when the bank account object was created.
            created_at:,
            # The purposes for the linked bank account.
            purposes:,
            # The current status of the linked bank account.
            status:,
            status_detail:,
            # Timestamp of the most recent update to the linked bank account.
            updated_at:,
            # Optional description for the bank account.
            description: nil,
            # Up to 20 additional user-defined key-value pairs. Useful for storing additional
            # information about the linked bank account in a structured format.
            metadata: nil,
            # The unique identifier of the Straddle Platform relatd to this bank account.
            platform_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                account_id: T.nilable(String),
                bank_account:
                  Straddle::Embed::LinkedBankAccountV1::Data::BankAccount,
                created_at: Time,
                purposes:
                  T::Array[
                    Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
                  ],
                status:
                  Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol,
                status_detail:
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail,
                updated_at: Time,
                description: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                platform_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class BankAccount < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::LinkedBankAccountV1::Data::BankAccount,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_holder

            sig { returns(String) }
            attr_accessor :account_mask

            sig { returns(String) }
            attr_accessor :institution_name

            sig { returns(String) }
            attr_accessor :routing_number

            sig do
              params(
                account_holder: String,
                account_mask: String,
                institution_name: String,
                routing_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              account_holder:,
              account_mask:,
              institution_name:,
              routing_number:
            )
            end

            sig do
              override.returns(
                {
                  account_holder: String,
                  account_mask: String,
                  institution_name: String,
                  routing_number: String
                }
              )
            end
            def to_hash
            end
          end

          module Purpose
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::LinkedBankAccountV1::Data::Purpose
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGES =
              T.let(
                :charges,
                Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
              )
            PAYOUTS =
              T.let(
                :payouts,
                Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
              )
            BILLING =
              T.let(
                :billing,
                Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::LinkedBankAccountV1::Data::Purpose::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The current status of the linked bank account.
          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::LinkedBankAccountV1::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::LinkedBankAccountV1::Data::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class StatusDetail < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail,
                  Straddle::Internal::AnyHash
                )
              end

            # A machine-readable code for the specific status, useful for programmatic
            # handling.
            sig { returns(String) }
            attr_accessor :code

            # A human-readable message describing the current status.
            sig { returns(String) }
            attr_accessor :message

            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            sig do
              returns(
                Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
              )
            end
            attr_accessor :reason

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            sig do
              returns(
                Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source::TaggedSymbol
              )
            end
            attr_accessor :source

            sig do
              params(
                code: String,
                message: String,
                reason:
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::OrSymbol,
                source:
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # A machine-readable code for the specific status, useful for programmatic
              # handling.
              code:,
              # A human-readable message describing the current status.
              message:,
              # A machine-readable identifier for the specific status, useful for programmatic
              # handling.
              reason:,
              # Identifies the origin of the status change (e.g., `watchtower`). This helps in
              # tracking the cause of status updates.
              source:
            )
            end

            sig do
              override.returns(
                {
                  code: String,
                  message: String,
                  reason:
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol,
                  source:
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source::TaggedSymbol
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
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNVERIFIED =
                T.let(
                  :unverified,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              STUCK =
                T.let(
                  :stuck,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              FAILED_VERIFICATION =
                T.let(
                  :failed_verification,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              DISABLED =
                T.let(
                  :disabled,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              NEW =
                T.let(
                  :new,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Reason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            module Source
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WATCHTOWER =
                T.let(
                  :watchtower,
                  Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::LinkedBankAccountV1::Data::StatusDetail::Source::TaggedSymbol
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
              T.all(Symbol, Straddle::Embed::LinkedBankAccountV1::ResponseType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountV1::ResponseType::TaggedSymbol
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
