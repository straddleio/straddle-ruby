# typed: strong

module Straddle
  module Models
    class PaykeySummaryPagedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeySummaryPagedV1, Straddle::Internal::AnyHash)
        end

      sig { returns(T::Array[Straddle::PaykeySummaryPagedV1::Data]) }
      attr_accessor :data

      sig { returns(Straddle::PaykeySummaryPagedV1::Meta) }
      attr_reader :meta

      sig { params(meta: Straddle::PaykeySummaryPagedV1::Meta::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol)
      end
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::PaykeySummaryPagedV1::Data::OrHash],
          meta: Straddle::PaykeySummaryPagedV1::Meta::OrHash,
          response_type: Straddle::PaykeySummaryPagedV1::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
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
            data: T::Array[Straddle::PaykeySummaryPagedV1::Data],
            meta: Straddle::PaykeySummaryPagedV1::Meta,
            response_type:
              Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::PaykeySummaryPagedV1::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the paykey.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Straddle::PaykeySummaryPagedV1::Data::Config) }
        attr_reader :config

        sig do
          params(
            config: Straddle::PaykeySummaryPagedV1::Data::Config::OrHash
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

        # The tokenized paykey value. This value is used to create payments and should be
        # stored securely.
        sig { returns(String) }
        attr_accessor :paykey

        sig do
          returns(Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol)
        end
        attr_accessor :source

        sig do
          returns(Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Timestamp of the most recent update to the paykey.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(T.nilable(Straddle::PaykeySummaryPagedV1::Data::BankData))
        end
        attr_reader :bank_data

        sig do
          params(
            bank_data: Straddle::PaykeySummaryPagedV1::Data::BankData::OrHash
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

        sig do
          returns(
            T.nilable(Straddle::PaykeySummaryPagedV1::Data::StatusDetails)
          )
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::PaykeySummaryPagedV1::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        sig do
          params(
            id: String,
            config: Straddle::PaykeySummaryPagedV1::Data::Config::OrHash,
            created_at: Time,
            label: String,
            paykey: String,
            source: Straddle::PaykeySummaryPagedV1::Data::Source::OrSymbol,
            status: Straddle::PaykeySummaryPagedV1::Data::Status::OrSymbol,
            updated_at: Time,
            bank_data: Straddle::PaykeySummaryPagedV1::Data::BankData::OrHash,
            customer_id: T.nilable(String),
            expires_at: T.nilable(Time),
            institution_name: T.nilable(String),
            status_details:
              Straddle::PaykeySummaryPagedV1::Data::StatusDetails::OrHash
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
          # The tokenized paykey value. This value is used to create payments and should be
          # stored securely.
          paykey:,
          source:,
          status:,
          # Timestamp of the most recent update to the paykey.
          updated_at:,
          bank_data: nil,
          # Unique identifier of the related customer object.
          customer_id: nil,
          # Expiration date and time of the paykey, if applicable.
          expires_at: nil,
          # Name of the financial institution.
          institution_name: nil,
          status_details: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              config: Straddle::PaykeySummaryPagedV1::Data::Config,
              created_at: Time,
              label: String,
              paykey: String,
              source:
                Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol,
              status:
                Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol,
              updated_at: Time,
              bank_data: Straddle::PaykeySummaryPagedV1::Data::BankData,
              customer_id: T.nilable(String),
              expires_at: T.nilable(Time),
              institution_name: T.nilable(String),
              status_details:
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeySummaryPagedV1::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                sandbox_outcome:
                  Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
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
                  Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeySummaryPagedV1::Data::Config::SandboxOutcome::TaggedSymbol
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
              T.all(Symbol, Straddle::PaykeySummaryPagedV1::Data::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BANK_ACCOUNT =
            T.let(
              :bank_account,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )
          STRADDLE =
            T.let(
              :straddle,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )
          MX =
            T.let(
              :mx,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )
          PLAID =
            T.let(
              :plaid,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )
          TAN =
            T.let(
              :tan,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )
          QUILTT =
            T.let(
              :quiltt,
              Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaykeySummaryPagedV1::Data::Source::TaggedSymbol
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
              T.all(Symbol, Straddle::PaykeySummaryPagedV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaykeySummaryPagedV1::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class BankData < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeySummaryPagedV1::Data::BankData,
                Straddle::Internal::AnyHash
              )
            end

          # Bank account number. This value is masked by default for security reasons. Use
          # the /unmask endpoint to access the unmasked value.
          sig { returns(String) }
          attr_accessor :account_number

          sig do
            returns(
              Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::TaggedSymbol
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
                Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::OrSymbol,
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
                  Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::TaggedSymbol,
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
                  Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHECKING =
              T.let(
                :checking,
                Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::TaggedSymbol
              )
            SAVINGS =
              T.let(
                :savings,
                Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeySummaryPagedV1::Data::BankData::AccountType::TaggedSymbol
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
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails,
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
              Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig do
            returns(
              Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
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
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::OrSymbol,
              source:
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::OrSymbol,
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
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol,
                source:
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol,
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
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Reason::TaggedSymbol
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
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            BANK_DECLINE =
              T.let(
                :bank_decline,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            CUSTOMER_DISPUTE =
              T.let(
                :customer_dispute,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            USER_ACTION =
              T.let(
                :user_action,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
              )
            SYSTEM =
              T.let(
                :system,
                Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeySummaryPagedV1::Data::StatusDetails::Source::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Meta < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::PaykeySummaryPagedV1::Meta,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for this API request, useful for troubleshooting.
        sig { returns(String) }
        attr_accessor :api_request_id

        # Timestamp for this API request, useful for troubleshooting.
        sig { returns(Time) }
        attr_accessor :api_request_timestamp

        # Maximum allowed page size for this endpoint.
        sig { returns(Integer) }
        attr_accessor :max_page_size

        # Page number for paginated results.
        sig { returns(Integer) }
        attr_accessor :page_number

        # Number of items per page in this response.
        sig { returns(Integer) }
        attr_accessor :page_size

        # The field that the results were sorted by.
        sig { returns(String) }
        attr_accessor :sort_by

        sig do
          returns(Straddle::PaykeySummaryPagedV1::Meta::SortOrder::TaggedSymbol)
        end
        attr_accessor :sort_order

        sig { returns(Integer) }
        attr_accessor :total_items

        # The number of pages available.
        sig { returns(Integer) }
        attr_accessor :total_pages

        sig do
          params(
            api_request_id: String,
            api_request_timestamp: Time,
            max_page_size: Integer,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::PaykeySummaryPagedV1::Meta::SortOrder::OrSymbol,
            total_items: Integer,
            total_pages: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for this API request, useful for troubleshooting.
          api_request_id:,
          # Timestamp for this API request, useful for troubleshooting.
          api_request_timestamp:,
          # Maximum allowed page size for this endpoint.
          max_page_size:,
          # Page number for paginated results.
          page_number:,
          # Number of items per page in this response.
          page_size:,
          # The field that the results were sorted by.
          sort_by:,
          sort_order:,
          total_items:,
          # The number of pages available.
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              api_request_id: String,
              api_request_timestamp: Time,
              max_page_size: Integer,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::PaykeySummaryPagedV1::Meta::SortOrder::TaggedSymbol,
              total_items: Integer,
              total_pages: Integer
            }
          )
        end
        def to_hash
        end

        module SortOrder
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaykeySummaryPagedV1::Meta::SortOrder)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::PaykeySummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::PaykeySummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaykeySummaryPagedV1::Meta::SortOrder::TaggedSymbol
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
            T.all(Symbol, Straddle::PaykeySummaryPagedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::PaykeySummaryPagedV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
