# typed: strong

module Straddle
  module Models
    module Embed
      class Representative < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::Representative, Straddle::Internal::AnyHash)
          end

        sig { returns(Straddle::Embed::Representative::Data) }
        attr_reader :data

        sig { params(data: Straddle::Embed::Representative::Data::OrHash).void }
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
          returns(Straddle::Embed::Representative::ResponseType::TaggedSymbol)
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Embed::Representative::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Embed::Representative::ResponseType::OrSymbol
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
              data: Straddle::Embed::Representative::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Embed::Representative::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::Representative::Data,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the representative.
          sig { returns(String) }
          attr_accessor :id

          # The unique identifier of the account this representative is associated with.
          sig { returns(String) }
          attr_accessor :account_id

          # Timestamp of when the representative was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
          sig { returns(Date) }
          attr_accessor :dob

          # The email address of the representative.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The first name of the representative.
          sig { returns(String) }
          attr_accessor :first_name

          # The last name of the representative.
          sig { returns(String) }
          attr_accessor :last_name

          # The mobile phone number of the representative.
          sig { returns(String) }
          attr_accessor :mobile_number

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Straddle::Embed::Representative::Data::Relationship) }
          attr_reader :relationship

          sig do
            params(
              relationship:
                Straddle::Embed::Representative::Data::Relationship::OrHash
            ).void
          end
          attr_writer :relationship

          # The last 4 digits of the representative's Social Security Number.
          sig { returns(String) }
          attr_accessor :ssn_last4

          # The current status of the representative.
          sig do
            returns(Straddle::Embed::Representative::Data::Status::TaggedSymbol)
          end
          attr_accessor :status

          sig { returns(Straddle::Embed::Representative::Data::StatusDetail) }
          attr_reader :status_detail

          sig do
            params(
              status_detail:
                Straddle::Embed::Representative::Data::StatusDetail::OrHash
            ).void
          end
          attr_writer :status_detail

          # Timestamp of the most recent update to the representative.
          sig { returns(Time) }
          attr_accessor :updated_at

          # Unique identifier for the representative in your database, used for
          # cross-referencing between Straddle and your systems.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_id

          sig { returns(T.nilable(String)) }
          attr_accessor :phone

          # The unique identifier of the user account associated with this representative,
          # if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_id

          sig do
            params(
              id: String,
              account_id: String,
              created_at: Time,
              dob: Date,
              email: T.nilable(String),
              first_name: String,
              last_name: String,
              mobile_number: String,
              name: String,
              relationship:
                Straddle::Embed::Representative::Data::Relationship::OrHash,
              ssn_last4: String,
              status: Straddle::Embed::Representative::Data::Status::OrSymbol,
              status_detail:
                Straddle::Embed::Representative::Data::StatusDetail::OrHash,
              updated_at: Time,
              external_id: T.nilable(String),
              phone: T.nilable(String),
              user_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the representative.
            id:,
            # The unique identifier of the account this representative is associated with.
            account_id:,
            # Timestamp of when the representative was created.
            created_at:,
            # The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
            dob:,
            # The email address of the representative.
            email:,
            # The first name of the representative.
            first_name:,
            # The last name of the representative.
            last_name:,
            # The mobile phone number of the representative.
            mobile_number:,
            name:,
            relationship:,
            # The last 4 digits of the representative's Social Security Number.
            ssn_last4:,
            # The current status of the representative.
            status:,
            status_detail:,
            # Timestamp of the most recent update to the representative.
            updated_at:,
            # Unique identifier for the representative in your database, used for
            # cross-referencing between Straddle and your systems.
            external_id: nil,
            phone: nil,
            # The unique identifier of the user account associated with this representative,
            # if applicable.
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                account_id: String,
                created_at: Time,
                dob: Date,
                email: T.nilable(String),
                first_name: String,
                last_name: String,
                mobile_number: String,
                name: String,
                relationship:
                  Straddle::Embed::Representative::Data::Relationship,
                ssn_last4: String,
                status:
                  Straddle::Embed::Representative::Data::Status::TaggedSymbol,
                status_detail:
                  Straddle::Embed::Representative::Data::StatusDetail,
                updated_at: Time,
                external_id: T.nilable(String),
                phone: T.nilable(String),
                user_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Relationship < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Representative::Data::Relationship,
                  Straddle::Internal::AnyHash
                )
              end

            # Whether the representative has significant responsibility to control, manage, or
            # direct the organization. One representative must be identified under the control
            # prong for each legal entity.
            sig { returns(T::Boolean) }
            attr_accessor :control

            # Whether the representative owns any percentage of of the equity interests of the
            # legal entity.
            sig { returns(T::Boolean) }
            attr_accessor :owner

            # Whether the person is authorized as the primary representative of the account.
            # This is the person chosen by the business to provide information about
            # themselves, general information about the account, and who consented to the
            # services agreement.
            #
            # There can be only one primary representative for an account at a time.
            sig { returns(T::Boolean) }
            attr_accessor :primary

            # The percentage of ownership the representative has. Required if 'Owner' is true.
            sig { returns(T.nilable(Float)) }
            attr_accessor :percent_ownership

            # The job title of the representative.
            sig { returns(T.nilable(String)) }
            attr_accessor :title

            sig do
              params(
                control: T::Boolean,
                owner: T::Boolean,
                primary: T::Boolean,
                percent_ownership: T.nilable(Float),
                title: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether the representative has significant responsibility to control, manage, or
              # direct the organization. One representative must be identified under the control
              # prong for each legal entity.
              control:,
              # Whether the representative owns any percentage of of the equity interests of the
              # legal entity.
              owner:,
              # Whether the person is authorized as the primary representative of the account.
              # This is the person chosen by the business to provide information about
              # themselves, general information about the account, and who consented to the
              # services agreement.
              #
              # There can be only one primary representative for an account at a time.
              primary:,
              # The percentage of ownership the representative has. Required if 'Owner' is true.
              percent_ownership: nil,
              # The job title of the representative.
              title: nil
            )
            end

            sig do
              override.returns(
                {
                  control: T::Boolean,
                  owner: T::Boolean,
                  primary: T::Boolean,
                  percent_ownership: T.nilable(Float),
                  title: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          # The current status of the representative.
          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Straddle::Embed::Representative::Data::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::Embed::Representative::Data::Status::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                Straddle::Embed::Representative::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Straddle::Embed::Representative::Data::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::Embed::Representative::Data::Status::TaggedSymbol
              )
            INACTIVE =
              T.let(
                :inactive,
                Straddle::Embed::Representative::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Representative::Data::Status::TaggedSymbol
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
                  Straddle::Embed::Representative::Data::StatusDetail,
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
                Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
              )
            end
            attr_accessor :reason

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            sig do
              returns(
                Straddle::Embed::Representative::Data::StatusDetail::Source::TaggedSymbol
              )
            end
            attr_accessor :source

            sig do
              params(
                code: String,
                message: String,
                reason:
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::OrSymbol,
                source:
                  Straddle::Embed::Representative::Data::StatusDetail::Source::OrSymbol
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
                    Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol,
                  source:
                    Straddle::Embed::Representative::Data::StatusDetail::Source::TaggedSymbol
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
                    Straddle::Embed::Representative::Data::StatusDetail::Reason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNVERIFIED =
                T.let(
                  :unverified,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              STUCK =
                T.let(
                  :stuck,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              FAILED_VERIFICATION =
                T.let(
                  :failed_verification,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              DISABLED =
                T.let(
                  :disabled,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )
              NEW =
                T.let(
                  :new,
                  Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::Representative::Data::StatusDetail::Reason::TaggedSymbol
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
                    Straddle::Embed::Representative::Data::StatusDetail::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WATCHTOWER =
                T.let(
                  :watchtower,
                  Straddle::Embed::Representative::Data::StatusDetail::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::Representative::Data::StatusDetail::Source::TaggedSymbol
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
              T.all(Symbol, Straddle::Embed::Representative::ResponseType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Embed::Representative::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Embed::Representative::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Embed::Representative::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Embed::Representative::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::Representative::ResponseType::TaggedSymbol
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
