# typed: strong

module Straddle
  module Models
    module Embed
      class LinkedBankAccountUnmaskV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::LinkedBankAccountUnmaskV1,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Embed::LinkedBankAccountUnmaskV1::Data) }
        attr_reader :data

        sig do
          params(
            data: Straddle::Embed::LinkedBankAccountUnmaskV1::Data::OrHash
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
            Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
          )
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Embed::LinkedBankAccountUnmaskV1::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::OrSymbol
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
              data: Straddle::Embed::LinkedBankAccountUnmaskV1::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the linked bank account.
          sig { returns(String) }
          attr_accessor :id

          # Unique identifier for the Straddle account related to this bank account.
          sig { returns(String) }
          attr_accessor :account_id

          # The bank account details associated with the linked bank account.
          sig do
            returns(
              Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount
            )
          end
          attr_reader :bank_account

          sig do
            params(
              bank_account:
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount::OrHash
            ).void
          end
          attr_writer :bank_account

          # Timestamp of when the linked bank account was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The current status of the linked bank account.
          sig do
            returns(
              Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Additional details about the current status of the linked bank account.
          sig do
            returns(
              Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail
            )
          end
          attr_reader :status_detail

          sig do
            params(
              status_detail:
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::OrHash
            ).void
          end
          attr_writer :status_detail

          # Timestamp of when the linked bank account was last updated.
          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              id: String,
              account_id: String,
              bank_account:
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount::OrHash,
              created_at: Time,
              status:
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::OrSymbol,
              status_detail:
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::OrHash,
              updated_at: Time,
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the linked bank account.
            id:,
            # Unique identifier for the Straddle account related to this bank account.
            account_id:,
            # The bank account details associated with the linked bank account.
            bank_account:,
            # Timestamp of when the linked bank account was created.
            created_at:,
            # The current status of the linked bank account.
            status:,
            # Additional details about the current status of the linked bank account.
            status_detail:,
            # Timestamp of when the linked bank account was last updated.
            updated_at:,
            metadata: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                account_id: String,
                bank_account:
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount,
                created_at: Time,
                status:
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol,
                status_detail:
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail,
                updated_at: Time,
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end

          class BankAccount < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::BankAccount,
                  Straddle::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_holder

            sig { returns(String) }
            attr_accessor :account_number

            sig { returns(String) }
            attr_accessor :institution_name

            sig { returns(String) }
            attr_accessor :routing_number

            # The bank account details associated with the linked bank account.
            sig do
              params(
                account_holder: String,
                account_number: String,
                institution_name: String,
                routing_number: String
              ).returns(T.attached_class)
            end
            def self.new(
              account_holder:,
              account_number:,
              institution_name:,
              routing_number:
            )
            end

            sig do
              override.returns(
                {
                  account_holder: String,
                  account_number: String,
                  institution_name: String,
                  routing_number: String
                }
              )
            end
            def to_hash
            end
          end

          # The current status of the linked bank account.
          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::Status::TaggedSymbol
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
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail,
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
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
              )
            end
            attr_accessor :reason

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            sig do
              returns(
                Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source::TaggedSymbol
              )
            end
            attr_accessor :source

            # Additional details about the current status of the linked bank account.
            sig do
              params(
                code: String,
                message: String,
                reason:
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::OrSymbol,
                source:
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source::OrSymbol
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
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol,
                  source:
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source::TaggedSymbol
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
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNVERIFIED =
                T.let(
                  :unverified,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              STUCK =
                T.let(
                  :stuck,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              FAILED_VERIFICATION =
                T.let(
                  :failed_verification,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              DISABLED =
                T.let(
                  :disabled,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              NEW =
                T.let(
                  :new,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Reason::TaggedSymbol
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
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WATCHTOWER =
                T.let(
                  :watchtower,
                  Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::LinkedBankAccountUnmaskV1::Data::StatusDetail::Source::TaggedSymbol
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
                Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType::TaggedSymbol
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
