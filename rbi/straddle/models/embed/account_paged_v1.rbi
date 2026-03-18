# typed: strong

module Straddle
  module Models
    module Embed
      class AccountPagedV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::AccountPagedV1, Straddle::Internal::AnyHash)
          end

        sig { returns(T::Array[Straddle::Embed::AccountPagedV1::Data]) }
        attr_accessor :data

        # Metadata about the API request, including an identifier, timestamp, and
        # pagination details.
        sig { returns(Straddle::PagedResponseMetadata) }
        attr_reader :meta

        sig { params(meta: Straddle::PagedResponseMetadata::OrHash).void }
        attr_writer :meta

        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        sig do
          returns(Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol)
        end
        attr_accessor :response_type

        sig do
          params(
            data: T::Array[Straddle::Embed::AccountPagedV1::Data::OrHash],
            meta: Straddle::PagedResponseMetadata::OrHash,
            response_type:
              Straddle::Embed::AccountPagedV1::ResponseType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Metadata about the API request, including an identifier, timestamp, and
          # pagination details.
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
              data: T::Array[Straddle::Embed::AccountPagedV1::Data],
              meta: Straddle::PagedResponseMetadata,
              response_type:
                Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::AccountPagedV1::Data,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the account.
          sig { returns(String) }
          attr_accessor :id

          # The access level granted to the account. This is determined by your platform
          # configuration. Use `standard` unless instructed otherwise by Straddle.
          sig do
            returns(
              Straddle::Embed::AccountPagedV1::Data::AccessLevel::TaggedSymbol
            )
          end
          attr_accessor :access_level

          # The unique identifier of the organization this account belongs to.
          sig { returns(String) }
          attr_accessor :organization_id

          # The current status of the account (e.g., 'active', 'inactive', 'pending').
          sig do
            returns(Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol)
          end
          attr_accessor :status

          sig { returns(Straddle::Embed::AccountPagedV1::Data::StatusDetail) }
          attr_reader :status_detail

          sig do
            params(
              status_detail:
                Straddle::Embed::AccountPagedV1::Data::StatusDetail::OrHash
            ).void
          end
          attr_writer :status_detail

          # The type of account (e.g., 'individual', 'business').
          sig do
            returns(Straddle::Embed::AccountPagedV1::Data::Type::TaggedSymbol)
          end
          attr_accessor :type

          sig { returns(T.nilable(Straddle::Embed::BusinessProfileV1)) }
          attr_reader :business_profile

          sig do
            params(
              business_profile: Straddle::Embed::BusinessProfileV1::OrHash
            ).void
          end
          attr_writer :business_profile

          sig do
            returns(
              T.nilable(Straddle::Embed::AccountPagedV1::Data::Capabilities)
            )
          end
          attr_reader :capabilities

          sig do
            params(
              capabilities:
                Straddle::Embed::AccountPagedV1::Data::Capabilities::OrHash
            ).void
          end
          attr_writer :capabilities

          # Timestamp of when the account was created.
          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          # Unique identifier for the account in your database, used for cross-referencing
          # between Straddle and your systems.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_id

          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the account in a structured format.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            returns(T.nilable(Straddle::Embed::AccountPagedV1::Data::Settings))
          end
          attr_reader :settings

          sig do
            params(
              settings: Straddle::Embed::AccountPagedV1::Data::Settings::OrHash
            ).void
          end
          attr_writer :settings

          sig { returns(T.nilable(Straddle::Embed::TermsOfServiceV1)) }
          attr_reader :terms_of_service

          sig do
            params(
              terms_of_service: Straddle::Embed::TermsOfServiceV1::OrHash
            ).void
          end
          attr_writer :terms_of_service

          # Timestamp of the most recent update to the account.
          sig { returns(T.nilable(Time)) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              access_level:
                Straddle::Embed::AccountPagedV1::Data::AccessLevel::OrSymbol,
              organization_id: String,
              status: Straddle::Embed::AccountPagedV1::Data::Status::OrSymbol,
              status_detail:
                Straddle::Embed::AccountPagedV1::Data::StatusDetail::OrHash,
              type: Straddle::Embed::AccountPagedV1::Data::Type::OrSymbol,
              business_profile: Straddle::Embed::BusinessProfileV1::OrHash,
              capabilities:
                Straddle::Embed::AccountPagedV1::Data::Capabilities::OrHash,
              created_at: T.nilable(Time),
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              settings: Straddle::Embed::AccountPagedV1::Data::Settings::OrHash,
              terms_of_service: Straddle::Embed::TermsOfServiceV1::OrHash,
              updated_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the account.
            id:,
            # The access level granted to the account. This is determined by your platform
            # configuration. Use `standard` unless instructed otherwise by Straddle.
            access_level:,
            # The unique identifier of the organization this account belongs to.
            organization_id:,
            # The current status of the account (e.g., 'active', 'inactive', 'pending').
            status:,
            status_detail:,
            # The type of account (e.g., 'individual', 'business').
            type:,
            business_profile: nil,
            capabilities: nil,
            # Timestamp of when the account was created.
            created_at: nil,
            # Unique identifier for the account in your database, used for cross-referencing
            # between Straddle and your systems.
            external_id: nil,
            # Up to 20 additional user-defined key-value pairs. Useful for storing additional
            # information about the account in a structured format.
            metadata: nil,
            settings: nil,
            terms_of_service: nil,
            # Timestamp of the most recent update to the account.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                access_level:
                  Straddle::Embed::AccountPagedV1::Data::AccessLevel::TaggedSymbol,
                organization_id: String,
                status:
                  Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol,
                status_detail:
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail,
                type: Straddle::Embed::AccountPagedV1::Data::Type::TaggedSymbol,
                business_profile: Straddle::Embed::BusinessProfileV1,
                capabilities:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities,
                created_at: T.nilable(Time),
                external_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                settings: Straddle::Embed::AccountPagedV1::Data::Settings,
                terms_of_service: Straddle::Embed::TermsOfServiceV1,
                updated_at: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          # The access level granted to the account. This is determined by your platform
          # configuration. Use `standard` unless instructed otherwise by Straddle.
          module AccessLevel
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::Embed::AccountPagedV1::Data::AccessLevel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::Embed::AccountPagedV1::Data::AccessLevel::TaggedSymbol
              )
            MANAGED =
              T.let(
                :managed,
                Straddle::Embed::AccountPagedV1::Data::AccessLevel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::AccountPagedV1::Data::AccessLevel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The current status of the account (e.g., 'active', 'inactive', 'pending').
          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::Embed::AccountPagedV1::Data::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::AccountPagedV1::Data::Status::TaggedSymbol
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
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail,
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
                Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
              )
            end
            attr_accessor :reason

            # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
            # This helps in tracking the cause of status updates.
            sig do
              returns(
                Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source::TaggedSymbol
              )
            end
            attr_accessor :source

            sig do
              params(
                code: String,
                message: String,
                reason:
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::OrSymbol,
                source:
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source::OrSymbol
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
              # Identifies the origin of the status change (e.g., `bank_decline`, `watchtower`).
              # This helps in tracking the cause of status updates.
              source:
            )
            end

            sig do
              override.returns(
                {
                  code: String,
                  message: String,
                  reason:
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol,
                  source:
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source::TaggedSymbol
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
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNVERIFIED =
                T.let(
                  :unverified,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              STUCK =
                T.let(
                  :stuck,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              FAILED_VERIFICATION =
                T.let(
                  :failed_verification,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              DISABLED =
                T.let(
                  :disabled,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              TERMINATED =
                T.let(
                  :terminated,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )
              NEW =
                T.let(
                  :new,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Reason::TaggedSymbol
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
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WATCHTOWER =
                T.let(
                  :watchtower,
                  Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::AccountPagedV1::Data::StatusDetail::Source::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The type of account (e.g., 'individual', 'business').
          module Type
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::Embed::AccountPagedV1::Data::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS =
              T.let(
                :business,
                Straddle::Embed::AccountPagedV1::Data::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::AccountPagedV1::Data::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Capabilities < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::AccountPagedV1::Data::Capabilities,
                  Straddle::Internal::AnyHash
                )
              end

            sig do
              returns(
                Straddle::Embed::AccountPagedV1::Data::Capabilities::ConsentTypes
              )
            end
            attr_reader :consent_types

            sig do
              params(
                consent_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::ConsentTypes::OrHash
              ).void
            end
            attr_writer :consent_types

            sig do
              returns(
                Straddle::Embed::AccountPagedV1::Data::Capabilities::CustomerTypes
              )
            end
            attr_reader :customer_types

            sig do
              params(
                customer_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::CustomerTypes::OrHash
              ).void
            end
            attr_writer :customer_types

            sig do
              returns(
                Straddle::Embed::AccountPagedV1::Data::Capabilities::PaymentTypes
              )
            end
            attr_reader :payment_types

            sig do
              params(
                payment_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::PaymentTypes::OrHash
              ).void
            end
            attr_writer :payment_types

            sig do
              params(
                consent_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::ConsentTypes::OrHash,
                customer_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::CustomerTypes::OrHash,
                payment_types:
                  Straddle::Embed::AccountPagedV1::Data::Capabilities::PaymentTypes::OrHash
              ).returns(T.attached_class)
            end
            def self.new(consent_types:, customer_types:, payment_types:)
            end

            sig do
              override.returns(
                {
                  consent_types:
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::ConsentTypes,
                  customer_types:
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::CustomerTypes,
                  payment_types:
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::PaymentTypes
                }
              )
            end
            def to_hash
            end

            class ConsentTypes < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::ConsentTypes,
                    Straddle::Internal::AnyHash
                  )
                end

              # Whether the internet payment authorization capability is enabled for the
              # account.
              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :internet

              sig do
                params(internet: Straddle::Embed::CapabilityV1::OrHash).void
              end
              attr_writer :internet

              # Whether the signed agreement payment authorization capability is enabled for the
              # account.
              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :signed_agreement

              sig do
                params(
                  signed_agreement: Straddle::Embed::CapabilityV1::OrHash
                ).void
              end
              attr_writer :signed_agreement

              sig do
                params(
                  internet: Straddle::Embed::CapabilityV1::OrHash,
                  signed_agreement: Straddle::Embed::CapabilityV1::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Whether the internet payment authorization capability is enabled for the
                # account.
                internet:,
                # Whether the signed agreement payment authorization capability is enabled for the
                # account.
                signed_agreement:
              )
              end

              sig do
                override.returns(
                  {
                    internet: Straddle::Embed::CapabilityV1,
                    signed_agreement: Straddle::Embed::CapabilityV1
                  }
                )
              end
              def to_hash
              end
            end

            class CustomerTypes < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::CustomerTypes,
                    Straddle::Internal::AnyHash
                  )
                end

              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :businesses

              sig do
                params(businesses: Straddle::Embed::CapabilityV1::OrHash).void
              end
              attr_writer :businesses

              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :individuals

              sig do
                params(individuals: Straddle::Embed::CapabilityV1::OrHash).void
              end
              attr_writer :individuals

              sig do
                params(
                  businesses: Straddle::Embed::CapabilityV1::OrHash,
                  individuals: Straddle::Embed::CapabilityV1::OrHash
                ).returns(T.attached_class)
              end
              def self.new(businesses:, individuals:)
              end

              sig do
                override.returns(
                  {
                    businesses: Straddle::Embed::CapabilityV1,
                    individuals: Straddle::Embed::CapabilityV1
                  }
                )
              end
              def to_hash
              end
            end

            class PaymentTypes < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Embed::AccountPagedV1::Data::Capabilities::PaymentTypes,
                    Straddle::Internal::AnyHash
                  )
                end

              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :charges

              sig do
                params(charges: Straddle::Embed::CapabilityV1::OrHash).void
              end
              attr_writer :charges

              sig { returns(Straddle::Embed::CapabilityV1) }
              attr_reader :payouts

              sig do
                params(payouts: Straddle::Embed::CapabilityV1::OrHash).void
              end
              attr_writer :payouts

              sig do
                params(
                  charges: Straddle::Embed::CapabilityV1::OrHash,
                  payouts: Straddle::Embed::CapabilityV1::OrHash
                ).returns(T.attached_class)
              end
              def self.new(charges:, payouts:)
              end

              sig do
                override.returns(
                  {
                    charges: Straddle::Embed::CapabilityV1,
                    payouts: Straddle::Embed::CapabilityV1
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Settings < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::AccountPagedV1::Data::Settings,
                  Straddle::Internal::AnyHash
                )
              end

            sig do
              returns(Straddle::Embed::AccountPagedV1::Data::Settings::Charges)
            end
            attr_reader :charges

            sig do
              params(
                charges:
                  Straddle::Embed::AccountPagedV1::Data::Settings::Charges::OrHash
              ).void
            end
            attr_writer :charges

            sig do
              returns(Straddle::Embed::AccountPagedV1::Data::Settings::Payouts)
            end
            attr_reader :payouts

            sig do
              params(
                payouts:
                  Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::OrHash
              ).void
            end
            attr_writer :payouts

            sig do
              params(
                charges:
                  Straddle::Embed::AccountPagedV1::Data::Settings::Charges::OrHash,
                payouts:
                  Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::OrHash
              ).returns(T.attached_class)
            end
            def self.new(charges:, payouts:)
            end

            sig do
              override.returns(
                {
                  charges:
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges,
                  payouts:
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts
                }
              )
            end
            def to_hash
            end

            class Charges < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges,
                    Straddle::Internal::AnyHash
                  )
                end

              # The maximum dollar amount of charges in a calendar day.
              sig { returns(Integer) }
              attr_accessor :daily_amount

              # The amount of time it takes for a charge to be funded. This value is defined by
              # Straddle.
              sig do
                returns(
                  Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                )
              end
              attr_accessor :funding_time

              # The unique identifier of the linked bank account associated with charges. This
              # value is defined by Straddle.
              sig { returns(String) }
              attr_accessor :linked_bank_account_id

              # The maximum amount of a single charge.
              sig { returns(Integer) }
              attr_accessor :max_amount

              # The maximum dollar amount of charges in a calendar month.
              sig { returns(Integer) }
              attr_accessor :monthly_amount

              # The maximum number of charges in a calendar month.
              sig { returns(Integer) }
              attr_accessor :monthly_count

              sig do
                params(
                  daily_amount: Integer,
                  funding_time:
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::OrSymbol,
                  linked_bank_account_id: String,
                  max_amount: Integer,
                  monthly_amount: Integer,
                  monthly_count: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The maximum dollar amount of charges in a calendar day.
                daily_amount:,
                # The amount of time it takes for a charge to be funded. This value is defined by
                # Straddle.
                funding_time:,
                # The unique identifier of the linked bank account associated with charges. This
                # value is defined by Straddle.
                linked_bank_account_id:,
                # The maximum amount of a single charge.
                max_amount:,
                # The maximum dollar amount of charges in a calendar month.
                monthly_amount:,
                # The maximum number of charges in a calendar month.
                monthly_count:
              )
              end

              sig do
                override.returns(
                  {
                    daily_amount: Integer,
                    funding_time:
                      Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol,
                    linked_bank_account_id: String,
                    max_amount: Integer,
                    monthly_amount: Integer,
                    monthly_count: Integer
                  }
                )
              end
              def to_hash
              end

              # The amount of time it takes for a charge to be funded. This value is defined by
              # Straddle.
              module FundingTime
                extend Straddle::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IMMEDIATE =
                  T.let(
                    :immediate,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                  )
                NEXT_DAY =
                  T.let(
                    :next_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                  )
                ONE_DAY =
                  T.let(
                    :one_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                  )
                TWO_DAY =
                  T.let(
                    :two_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                  )
                THREE_DAY =
                  T.let(
                    :three_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Embed::AccountPagedV1::Data::Settings::Charges::FundingTime::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Payouts < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts,
                    Straddle::Internal::AnyHash
                  )
                end

              # The maximum dollar amount of payouts in a day.
              sig { returns(Integer) }
              attr_accessor :daily_amount

              # The amount of time it takes for a payout to be funded. This value is defined by
              # Straddle.
              sig do
                returns(
                  Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                )
              end
              attr_accessor :funding_time

              # The unique identifier of the linked bank account to use for payouts.
              sig { returns(String) }
              attr_accessor :linked_bank_account_id

              # The maximum amount of a single payout.
              sig { returns(Integer) }
              attr_accessor :max_amount

              # The maximum dollar amount of payouts in a month.
              sig { returns(Integer) }
              attr_accessor :monthly_amount

              # The maximum number of payouts in a month.
              sig { returns(Integer) }
              attr_accessor :monthly_count

              sig do
                params(
                  daily_amount: Integer,
                  funding_time:
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::OrSymbol,
                  linked_bank_account_id: String,
                  max_amount: Integer,
                  monthly_amount: Integer,
                  monthly_count: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The maximum dollar amount of payouts in a day.
                daily_amount:,
                # The amount of time it takes for a payout to be funded. This value is defined by
                # Straddle.
                funding_time:,
                # The unique identifier of the linked bank account to use for payouts.
                linked_bank_account_id:,
                # The maximum amount of a single payout.
                max_amount:,
                # The maximum dollar amount of payouts in a month.
                monthly_amount:,
                # The maximum number of payouts in a month.
                monthly_count:
              )
              end

              sig do
                override.returns(
                  {
                    daily_amount: Integer,
                    funding_time:
                      Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol,
                    linked_bank_account_id: String,
                    max_amount: Integer,
                    monthly_amount: Integer,
                    monthly_count: Integer
                  }
                )
              end
              def to_hash
              end

              # The amount of time it takes for a payout to be funded. This value is defined by
              # Straddle.
              module FundingTime
                extend Straddle::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IMMEDIATE =
                  T.let(
                    :immediate,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                  )
                NEXT_DAY =
                  T.let(
                    :next_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                  )
                ONE_DAY =
                  T.let(
                    :one_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                  )
                TWO_DAY =
                  T.let(
                    :two_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                  )
                THREE_DAY =
                  T.let(
                    :three_day,
                    Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Embed::AccountPagedV1::Data::Settings::Payouts::FundingTime::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
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
              T.all(Symbol, Straddle::Embed::AccountPagedV1::ResponseType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::AccountPagedV1::ResponseType::TaggedSymbol
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
