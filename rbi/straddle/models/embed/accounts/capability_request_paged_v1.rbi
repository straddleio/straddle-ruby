# typed: strong

module Straddle
  module Models
    module Embed
      module Accounts
        class CapabilityRequestPagedV1 < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::Accounts::CapabilityRequestPagedV1,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data
              ]
            )
          end
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
            returns(
              Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
            )
          end
          attr_accessor :response_type

          sig do
            params(
              data:
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::OrHash
                ],
              meta: Straddle::PagedResponseMetadata::OrHash,
              response_type:
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::OrSymbol
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
                data:
                  T::Array[
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data
                  ],
                meta: Straddle::PagedResponseMetadata,
                response_type:
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class Data < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data,
                  Straddle::Internal::AnyHash
                )
              end

            # Unique identifier for the capability request.
            sig { returns(String) }
            attr_accessor :id

            # The unique identifier of the account associated with this capability request.
            sig { returns(String) }
            attr_accessor :account_id

            # The category of the requested capability. Use `payment_type` for charges and
            # payouts, `customer_type` to define `individuals` or `businesses`, and
            # `consent_type` for `signed_agreement` or `internet` payment authorization.
            sig do
              returns(
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            # Timestamp of when the capability request was created.
            sig { returns(Time) }
            attr_accessor :created_at

            # The current status of the capability request.
            sig do
              returns(
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # The specific type of capability being requested within the category.
            sig do
              returns(
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Timestamp of the most recent update to the capability request.
            sig { returns(Time) }
            attr_accessor :updated_at

            # Any specific settings or configurations related to the requested capability.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :settings

            sig do
              params(
                id: String,
                account_id: String,
                category:
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::OrSymbol,
                created_at: Time,
                status:
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::OrSymbol,
                type:
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::OrSymbol,
                updated_at: Time,
                settings: T.nilable(T::Hash[Symbol, T.anything])
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the capability request.
              id:,
              # The unique identifier of the account associated with this capability request.
              account_id:,
              # The category of the requested capability. Use `payment_type` for charges and
              # payouts, `customer_type` to define `individuals` or `businesses`, and
              # `consent_type` for `signed_agreement` or `internet` payment authorization.
              category:,
              # Timestamp of when the capability request was created.
              created_at:,
              # The current status of the capability request.
              status:,
              # The specific type of capability being requested within the category.
              type:,
              # Timestamp of the most recent update to the capability request.
              updated_at:,
              # Any specific settings or configurations related to the requested capability.
              settings: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  account_id: String,
                  category:
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol,
                  created_at: Time,
                  status:
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol,
                  type:
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol,
                  updated_at: Time,
                  settings: T.nilable(T::Hash[Symbol, T.anything])
                }
              )
            end
            def to_hash
            end

            # The category of the requested capability. Use `payment_type` for charges and
            # payouts, `customer_type` to define `individuals` or `businesses`, and
            # `consent_type` for `signed_agreement` or `internet` payment authorization.
            module Category
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_TYPE =
                T.let(
                  :payment_type,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol
                )
              CUSTOMER_TYPE =
                T.let(
                  :customer_type,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol
                )
              CONSENT_TYPE =
                T.let(
                  :consent_type,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The current status of the capability request.
            module Status
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )
              REJECTED =
                T.let(
                  :rejected,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )
              APPROVED =
                T.let(
                  :approved,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )
              REVIEWING =
                T.let(
                  :reviewing,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The specific type of capability being requested within the category.
            module Type
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGES =
                T.let(
                  :charges,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )
              PAYOUTS =
                T.let(
                  :payouts,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )
              INDIVIDUALS =
                T.let(
                  :individuals,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )
              BUSINESSES =
                T.let(
                  :businesses,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )
              SIGNED_AGREEMENT =
                T.let(
                  :signed_agreement,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )
              INTERNET =
                T.let(
                  :internet,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type::TaggedSymbol
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
                T.all(
                  Symbol,
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OBJECT =
              T.let(
                :object,
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
              )
            ARRAY =
              T.let(
                :array,
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
              )
            NONE =
              T.let(
                :none,
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType::TaggedSymbol
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
end
