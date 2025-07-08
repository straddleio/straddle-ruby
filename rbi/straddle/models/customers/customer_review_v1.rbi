# typed: strong

module Straddle
  module Models
    CustomerReviewV1 = Customers::CustomerReviewV1

    module Customers
      class CustomerReviewV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::CustomerReviewV1,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Customers::CustomerReviewV1::Data) }
        attr_reader :data

        sig do
          params(data: Straddle::Customers::CustomerReviewV1::Data::OrHash).void
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
            Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
          )
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Customers::CustomerReviewV1::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Customers::CustomerReviewV1::ResponseType::OrSymbol
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
              data: Straddle::Customers::CustomerReviewV1::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Customers::CustomerReviewV1::Data,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              Straddle::Customers::CustomerReviewV1::Data::CustomerDetails
            )
          end
          attr_reader :customer_details

          sig do
            params(
              customer_details:
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::OrHash
            ).void
          end
          attr_writer :customer_details

          sig do
            returns(
              T.nilable(
                Straddle::Customers::CustomerReviewV1::Data::IdentityDetails
              )
            )
          end
          attr_reader :identity_details

          sig do
            params(
              identity_details:
                Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::OrHash
            ).void
          end
          attr_writer :identity_details

          sig do
            params(
              customer_details:
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::OrHash,
              identity_details:
                Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::OrHash
            ).returns(T.attached_class)
          end
          def self.new(customer_details:, identity_details: nil)
          end

          sig do
            override.returns(
              {
                customer_details:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails,
                identity_details:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails
              }
            )
          end
          def to_hash
          end

          class CustomerDetails < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails,
                  Straddle::Internal::AnyHash
                )
              end

            # Unique identifier for the customer.
            sig { returns(String) }
            attr_accessor :id

            # Timestamp of when the customer record was created.
            sig { returns(Time) }
            attr_accessor :created_at

            # The customer's email address.
            sig { returns(String) }
            attr_accessor :email

            # Full name of the individual or business name.
            sig { returns(String) }
            attr_accessor :name

            # The customer's phone number in E.164 format.
            sig { returns(String) }
            attr_accessor :phone

            sig do
              returns(
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            sig do
              returns(
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Timestamp of the most recent update to the customer record.
            sig { returns(Time) }
            attr_accessor :updated_at

            # An object containing the customer's address. This is optional, but if provided,
            # all required fields must be present.
            sig { returns(T.nilable(Straddle::CustomerAddressV1)) }
            attr_reader :address

            sig do
              params(
                address: T.nilable(Straddle::CustomerAddressV1::OrHash)
              ).void
            end
            attr_writer :address

            # PII required to trigger Patriot Act compliant KYC verification.
            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::Variants
                )
              )
            end
            attr_accessor :compliance_profile

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config
                )
              )
            end
            attr_reader :config

            sig do
              params(
                config:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::OrHash
              ).void
            end
            attr_writer :config

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device
                )
              )
            end
            attr_reader :device

            sig do
              params(
                device:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device::OrHash
              ).void
            end
            attr_writer :device

            # Unique identifier for the customer in your database, used for cross-referencing
            # between Straddle and your systems.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_id

            # Up to 20 additional user-defined key-value pairs. Useful for storing additional
            # information about the customer in a structured format.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_accessor :metadata

            sig do
              params(
                id: String,
                created_at: Time,
                email: String,
                name: String,
                phone: String,
                status:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::OrSymbol,
                type:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::OrSymbol,
                updated_at: Time,
                address: T.nilable(Straddle::CustomerAddressV1::OrHash),
                compliance_profile:
                  T.nilable(
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile::OrHash,
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::OrHash
                    )
                  ),
                config:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::OrHash,
                device:
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device::OrHash,
                external_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, String])
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the customer.
              id:,
              # Timestamp of when the customer record was created.
              created_at:,
              # The customer's email address.
              email:,
              # Full name of the individual or business name.
              name:,
              # The customer's phone number in E.164 format.
              phone:,
              status:,
              type:,
              # Timestamp of the most recent update to the customer record.
              updated_at:,
              # An object containing the customer's address. This is optional, but if provided,
              # all required fields must be present.
              address: nil,
              # PII required to trigger Patriot Act compliant KYC verification.
              compliance_profile: nil,
              config: nil,
              device: nil,
              # Unique identifier for the customer in your database, used for cross-referencing
              # between Straddle and your systems.
              external_id: nil,
              # Up to 20 additional user-defined key-value pairs. Useful for storing additional
              # information about the customer in a structured format.
              metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  email: String,
                  name: String,
                  phone: String,
                  status:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol,
                  type:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol,
                  updated_at: Time,
                  address: T.nilable(Straddle::CustomerAddressV1),
                  compliance_profile:
                    T.nilable(
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::Variants
                    ),
                  config:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config,
                  device:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device,
                  external_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, String])
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
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                )
              REVIEW =
                T.let(
                  :review,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                )
              INACTIVE =
                T.let(
                  :inactive,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                )
              REJECTED =
                T.let(
                  :rejected,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Type
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INDIVIDUAL =
                T.let(
                  :individual,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol
                )
              BUSINESS =
                T.let(
                  :business,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :unknown,
                  Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # PII required to trigger Patriot Act compliant KYC verification.
            module ComplianceProfile
              extend Straddle::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile
                  )
                end

              class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile,
                      Straddle::Internal::AnyHash
                    )
                  end

                # Masked date of birth in \***\*-**-\*\* format.
                sig { returns(T.nilable(Date)) }
                attr_accessor :dob

                # Masked Social Security Number in the format **\*-**-\*\*\*\*.
                sig { returns(T.nilable(String)) }
                attr_accessor :ssn

                # PII required to trigger Patriot Act compliant KYC verification.
                sig do
                  params(dob: T.nilable(Date), ssn: T.nilable(String)).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Masked date of birth in \***\*-**-\*\* format.
                  dob:,
                  # Masked Social Security Number in the format **\*-**-\*\*\*\*.
                  ssn:
                )
                end

                sig do
                  override.returns(
                    { dob: T.nilable(Date), ssn: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end

              class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile,
                      Straddle::Internal::AnyHash
                    )
                  end

                # Masked Employer Identification Number in the format **-**\*****
                sig { returns(T.nilable(String)) }
                attr_accessor :ein

                # The official registered name of the business. This name should be correlated
                # with the `ein` value.
                sig { returns(T.nilable(String)) }
                attr_accessor :legal_business_name

                # A list of people related to the company. Only valid where customer type is
                # 'business'.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative
                      ]
                    )
                  )
                end
                attr_accessor :representatives

                # Official business website URL. Optional but recommended for enhanced KYB.
                sig { returns(T.nilable(String)) }
                attr_accessor :website

                # Business registration data required to trigger Patriot Act compliant KYB
                # verification.
                sig do
                  params(
                    ein: T.nilable(String),
                    legal_business_name: T.nilable(String),
                    representatives:
                      T.nilable(
                        T::Array[
                          Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative::OrHash
                        ]
                      ),
                    website: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Masked Employer Identification Number in the format **-**\*****
                  ein:,
                  # The official registered name of the business. This name should be correlated
                  # with the `ein` value.
                  legal_business_name:,
                  # A list of people related to the company. Only valid where customer type is
                  # 'business'.
                  representatives: nil,
                  # Official business website URL. Optional but recommended for enhanced KYB.
                  website: nil
                )
                end

                sig do
                  override.returns(
                    {
                      ein: T.nilable(String),
                      legal_business_name: T.nilable(String),
                      representatives:
                        T.nilable(
                          T::Array[
                            Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative
                          ]
                        ),
                      website: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                class Representative < Straddle::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative,
                        Straddle::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :name

                  sig { returns(T.nilable(String)) }
                  attr_accessor :email

                  sig { returns(T.nilable(String)) }
                  attr_accessor :phone

                  sig do
                    params(
                      name: String,
                      email: T.nilable(String),
                      phone: T.nilable(String)
                    ).returns(T.attached_class)
                  end
                  def self.new(name:, email: nil, phone: nil)
                  end

                  sig do
                    override.returns(
                      {
                        name: String,
                        email: T.nilable(String),
                        phone: T.nilable(String)
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            class Config < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config,
                    Straddle::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                )
              end
              attr_reader :processing_method

              sig do
                params(
                  processing_method:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::OrSymbol
                ).void
              end
              attr_writer :processing_method

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                )
              end
              attr_reader :sandbox_outcome

              sig do
                params(
                  sandbox_outcome:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::OrSymbol
                ).void
              end
              attr_writer :sandbox_outcome

              sig do
                params(
                  processing_method:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::OrSymbol,
                  sandbox_outcome:
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(processing_method: nil, sandbox_outcome: nil)
              end

              sig do
                override.returns(
                  {
                    processing_method:
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol,
                    sandbox_outcome:
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
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
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INLINE =
                  T.let(
                    :inline,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                BACKGROUND =
                  T.let(
                    :background,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol
                  )
                SKIP =
                  T.let(
                    :skip,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod::TaggedSymbol
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
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                STANDARD =
                  T.let(
                    :standard,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                VERIFIED =
                  T.let(
                    :verified,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                REJECTED =
                  T.let(
                    :rejected,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Device < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device,
                    Straddle::Internal::AnyHash
                  )
                end

              # The customer's IP address at the time of profile creation. Use `0.0.0.0` to
              # represent an offline customer registration.
              sig { returns(String) }
              attr_accessor :ip_address

              sig { params(ip_address: String).returns(T.attached_class) }
              def self.new(
                # The customer's IP address at the time of profile creation. Use `0.0.0.0` to
                # represent an offline customer registration.
                ip_address:
              )
              end

              sig { override.returns({ ip_address: String }) }
              def to_hash
              end
            end
          end

          class IdentityDetails < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails,
                  Straddle::Internal::AnyHash
                )
              end

            # Detailed breakdown of the customer verification results, including decisions,
            # risk scores, correlation score, and more.
            sig do
              returns(
                Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown
              )
            end
            attr_reader :breakdown

            sig do
              params(
                breakdown:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown::OrHash
              ).void
            end
            attr_writer :breakdown

            # Timestamp of when the review was initiated.
            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol
              )
            end
            attr_accessor :decision

            # Unique identifier for the review.
            sig { returns(String) }
            attr_accessor :review_id

            # Timestamp of the most recent update to the review.
            sig { returns(Time) }
            attr_accessor :updated_at

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC
                )
              )
            end
            attr_reader :kyc

            sig do
              params(
                kyc:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::OrHash
              ).void
            end
            attr_writer :kyc

            # Dictionary of all messages from the customer verification process.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_accessor :messages

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts
                )
              )
            end
            attr_reader :network_alerts

            sig do
              params(
                network_alerts:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::OrHash
              ).void
            end
            attr_writer :network_alerts

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation
                )
              )
            end
            attr_reader :reputation

            sig do
              params(
                reputation:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::OrHash
              ).void
            end
            attr_writer :reputation

            sig do
              returns(
                T.nilable(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList
                )
              )
            end
            attr_reader :watch_list

            sig do
              params(
                watch_list:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::OrHash
              ).void
            end
            attr_writer :watch_list

            sig do
              params(
                breakdown:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown::OrHash,
                created_at: Time,
                decision:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::OrSymbol,
                review_id: String,
                updated_at: Time,
                kyc:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::OrHash,
                messages: T.nilable(T::Hash[Symbol, String]),
                network_alerts:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::OrHash,
                reputation:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::OrHash,
                watch_list:
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Detailed breakdown of the customer verification results, including decisions,
              # risk scores, correlation score, and more.
              breakdown:,
              # Timestamp of when the review was initiated.
              created_at:,
              decision:,
              # Unique identifier for the review.
              review_id:,
              # Timestamp of the most recent update to the review.
              updated_at:,
              kyc: nil,
              # Dictionary of all messages from the customer verification process.
              messages: nil,
              network_alerts: nil,
              reputation: nil,
              watch_list: nil
            )
            end

            sig do
              override.returns(
                {
                  breakdown:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown,
                  created_at: Time,
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol,
                  review_id: String,
                  updated_at: Time,
                  kyc:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC,
                  messages: T.nilable(T::Hash[Symbol, String]),
                  network_alerts:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts,
                  reputation:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation,
                  watch_list:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList
                }
              )
            end
            def to_hash
            end

            class Breakdown < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown,
                    Straddle::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :address

              sig do
                params(
                  address:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :address

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :business_evaluation

              sig do
                params(
                  business_evaluation:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :business_evaluation

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :business_identification

              sig do
                params(
                  business_identification:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :business_identification

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :business_validation

              sig do
                params(
                  business_validation:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :business_validation

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :email

              sig do
                params(
                  email:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :email

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :fraud

              sig do
                params(
                  fraud:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :fraud

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :phone

              sig do
                params(
                  phone:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :phone

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::IdentityVerificationBreakdownV1
                  )
                )
              end
              attr_reader :synthetic

              sig do
                params(
                  synthetic:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).void
              end
              attr_writer :synthetic

              # Detailed breakdown of the customer verification results, including decisions,
              # risk scores, correlation score, and more.
              sig do
                params(
                  address:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  business_evaluation:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  business_identification:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  business_validation:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  email:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  fraud:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  phone:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash,
                  synthetic:
                    Straddle::Customers::IdentityVerificationBreakdownV1::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                address: nil,
                business_evaluation: nil,
                business_identification: nil,
                business_validation: nil,
                email: nil,
                fraud: nil,
                phone: nil,
                synthetic: nil
              )
              end

              sig do
                override.returns(
                  {
                    address:
                      Straddle::Customers::IdentityVerificationBreakdownV1,
                    business_evaluation:
                      Straddle::Customers::IdentityVerificationBreakdownV1,
                    business_identification:
                      Straddle::Customers::IdentityVerificationBreakdownV1,
                    business_validation:
                      Straddle::Customers::IdentityVerificationBreakdownV1,
                    email: Straddle::Customers::IdentityVerificationBreakdownV1,
                    fraud: Straddle::Customers::IdentityVerificationBreakdownV1,
                    phone: Straddle::Customers::IdentityVerificationBreakdownV1,
                    synthetic:
                      Straddle::Customers::IdentityVerificationBreakdownV1
                  }
                )
              end
              def to_hash
              end
            end

            module Decision
              extend Straddle::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCEPT =
                T.let(
                  :accept,
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol
                )
              REJECT =
                T.let(
                  :reject,
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol
                )
              REVIEW =
                T.let(
                  :review,
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class KYC < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC,
                    Straddle::Internal::AnyHash
                  )
                end

              # Boolean values indicating the result of each validation in the KYC process.
              sig do
                returns(
                  Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations
                )
              end
              attr_reader :validations

              sig do
                params(
                  validations:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations::OrHash
                ).void
              end
              attr_writer :validations

              # List of specific result codes from the KYC screening process.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :codes

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                  )
                )
              end
              attr_reader :decision

              sig do
                params(
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::OrSymbol
                ).void
              end
              attr_writer :decision

              sig do
                params(
                  validations:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations::OrHash,
                  codes: T.nilable(T::Array[String]),
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Boolean values indicating the result of each validation in the KYC process.
                validations:,
                # List of specific result codes from the KYC screening process.
                codes: nil,
                decision: nil
              )
              end

              sig do
                override.returns(
                  {
                    validations:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations,
                    codes: T.nilable(T::Array[String]),
                    decision:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class Validations < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations,
                      Straddle::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :address

                sig { params(address: T::Boolean).void }
                attr_writer :address

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :city

                sig { params(city: T::Boolean).void }
                attr_writer :city

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :dob

                sig { params(dob: T::Boolean).void }
                attr_writer :dob

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :email

                sig { params(email: T::Boolean).void }
                attr_writer :email

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :first_name

                sig { params(first_name: T::Boolean).void }
                attr_writer :first_name

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :last_name

                sig { params(last_name: T::Boolean).void }
                attr_writer :last_name

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :phone

                sig { params(phone: T::Boolean).void }
                attr_writer :phone

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :ssn

                sig { params(ssn: T::Boolean).void }
                attr_writer :ssn

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :state

                sig { params(state: T::Boolean).void }
                attr_writer :state

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :zip

                sig { params(zip: T::Boolean).void }
                attr_writer :zip

                # Boolean values indicating the result of each validation in the KYC process.
                sig do
                  params(
                    address: T::Boolean,
                    city: T::Boolean,
                    dob: T::Boolean,
                    email: T::Boolean,
                    first_name: T::Boolean,
                    last_name: T::Boolean,
                    phone: T::Boolean,
                    ssn: T::Boolean,
                    state: T::Boolean,
                    zip: T::Boolean
                  ).returns(T.attached_class)
                end
                def self.new(
                  address: nil,
                  city: nil,
                  dob: nil,
                  email: nil,
                  first_name: nil,
                  last_name: nil,
                  phone: nil,
                  ssn: nil,
                  state: nil,
                  zip: nil
                )
                end

                sig do
                  override.returns(
                    {
                      address: T::Boolean,
                      city: T::Boolean,
                      dob: T::Boolean,
                      email: T::Boolean,
                      first_name: T::Boolean,
                      last_name: T::Boolean,
                      phone: T::Boolean,
                      ssn: T::Boolean,
                      state: T::Boolean,
                      zip: T::Boolean
                    }
                  )
                end
                def to_hash
                end
              end

              module Decision
                extend Straddle::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACCEPT =
                  T.let(
                    :accept,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                  )
                REJECT =
                  T.let(
                    :reject,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class NetworkAlerts < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts,
                    Straddle::Internal::AnyHash
                  )
                end

              # Any alerts or flags raised during the consortium alert screening.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :alerts

              # List of specific result codes from the consortium alert screening.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :codes

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
                  )
                )
              end
              attr_reader :decision

              sig do
                params(
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::OrSymbol
                ).void
              end
              attr_writer :decision

              sig do
                params(
                  alerts: T.nilable(T::Array[String]),
                  codes: T.nilable(T::Array[String]),
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Any alerts or flags raised during the consortium alert screening.
                alerts: nil,
                # List of specific result codes from the consortium alert screening.
                codes: nil,
                decision: nil
              )
              end

              sig do
                override.returns(
                  {
                    alerts: T.nilable(T::Array[String]),
                    codes: T.nilable(T::Array[String]),
                    decision:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
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
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACCEPT =
                  T.let(
                    :accept,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
                  )
                REJECT =
                  T.let(
                    :reject,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Reputation < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation,
                    Straddle::Internal::AnyHash
                  )
                end

              # Specific codes related to the Straddle reputation screening results.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :codes

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol
                  )
                )
              end
              attr_reader :decision

              sig do
                params(
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::OrSymbol
                ).void
              end
              attr_writer :decision

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights
                  )
                )
              end
              attr_reader :insights

              sig do
                params(
                  insights:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights::OrHash
                ).void
              end
              attr_writer :insights

              sig { returns(T.nilable(Float)) }
              attr_accessor :risk_score

              sig do
                params(
                  codes: T.nilable(T::Array[String]),
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::OrSymbol,
                  insights:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights::OrHash,
                  risk_score: T.nilable(Float)
                ).returns(T.attached_class)
              end
              def self.new(
                # Specific codes related to the Straddle reputation screening results.
                codes: nil,
                decision: nil,
                insights: nil,
                risk_score: nil
              )
              end

              sig do
                override.returns(
                  {
                    codes: T.nilable(T::Array[String]),
                    decision:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol,
                    insights:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights,
                    risk_score: T.nilable(Float)
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
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACCEPT =
                  T.let(
                    :accept,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol
                  )
                REJECT =
                  T.let(
                    :reject,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Insights < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights,
                      Straddle::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_accessor :accounts_active_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :accounts_closed_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :accounts_closed_dates

                sig { returns(T.nilable(Integer)) }
                attr_accessor :accounts_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :accounts_fraud_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :accounts_fraud_labeled_dates

                sig { returns(T.nilable(Float)) }
                attr_accessor :accounts_fraud_loss_total_amount

                sig { returns(T.nilable(Integer)) }
                attr_accessor :ach_fraud_transactions_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :ach_fraud_transactions_dates

                sig { returns(T.nilable(Float)) }
                attr_accessor :ach_fraud_transactions_total_amount

                sig { returns(T.nilable(Integer)) }
                attr_accessor :ach_returned_transactions_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :ach_returned_transactions_dates

                sig { returns(T.nilable(Float)) }
                attr_accessor :ach_returned_transactions_total_amount

                sig { returns(T.nilable(Integer)) }
                attr_accessor :applications_approved_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :applications_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :applications_dates

                sig { returns(T.nilable(Integer)) }
                attr_accessor :applications_declined_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :applications_fraud_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :card_disputed_transactions_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :card_disputed_transactions_dates

                sig { returns(T.nilable(Float)) }
                attr_accessor :card_disputed_transactions_total_amount

                sig { returns(T.nilable(Integer)) }
                attr_accessor :card_fraud_transactions_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :card_fraud_transactions_dates

                sig { returns(T.nilable(Float)) }
                attr_accessor :card_fraud_transactions_total_amount

                sig { returns(T.nilable(Integer)) }
                attr_accessor :card_stopped_transactions_count

                sig { returns(T.nilable(T::Array[Date])) }
                attr_accessor :card_stopped_transactions_dates

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_active_profile_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_address_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_closed_profile_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_dob_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_email_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_institution_count

                sig { returns(T.nilable(Integer)) }
                attr_accessor :user_mobile_count

                sig do
                  params(
                    accounts_active_count: T.nilable(Integer),
                    accounts_closed_count: T.nilable(Integer),
                    accounts_closed_dates: T.nilable(T::Array[Date]),
                    accounts_count: T.nilable(Integer),
                    accounts_fraud_count: T.nilable(Integer),
                    accounts_fraud_labeled_dates: T.nilable(T::Array[Date]),
                    accounts_fraud_loss_total_amount: T.nilable(Float),
                    ach_fraud_transactions_count: T.nilable(Integer),
                    ach_fraud_transactions_dates: T.nilable(T::Array[Date]),
                    ach_fraud_transactions_total_amount: T.nilable(Float),
                    ach_returned_transactions_count: T.nilable(Integer),
                    ach_returned_transactions_dates: T.nilable(T::Array[Date]),
                    ach_returned_transactions_total_amount: T.nilable(Float),
                    applications_approved_count: T.nilable(Integer),
                    applications_count: T.nilable(Integer),
                    applications_dates: T.nilable(T::Array[Date]),
                    applications_declined_count: T.nilable(Integer),
                    applications_fraud_count: T.nilable(Integer),
                    card_disputed_transactions_count: T.nilable(Integer),
                    card_disputed_transactions_dates: T.nilable(T::Array[Date]),
                    card_disputed_transactions_total_amount: T.nilable(Float),
                    card_fraud_transactions_count: T.nilable(Integer),
                    card_fraud_transactions_dates: T.nilable(T::Array[Date]),
                    card_fraud_transactions_total_amount: T.nilable(Float),
                    card_stopped_transactions_count: T.nilable(Integer),
                    card_stopped_transactions_dates: T.nilable(T::Array[Date]),
                    user_active_profile_count: T.nilable(Integer),
                    user_address_count: T.nilable(Integer),
                    user_closed_profile_count: T.nilable(Integer),
                    user_dob_count: T.nilable(Integer),
                    user_email_count: T.nilable(Integer),
                    user_institution_count: T.nilable(Integer),
                    user_mobile_count: T.nilable(Integer)
                  ).returns(T.attached_class)
                end
                def self.new(
                  accounts_active_count: nil,
                  accounts_closed_count: nil,
                  accounts_closed_dates: nil,
                  accounts_count: nil,
                  accounts_fraud_count: nil,
                  accounts_fraud_labeled_dates: nil,
                  accounts_fraud_loss_total_amount: nil,
                  ach_fraud_transactions_count: nil,
                  ach_fraud_transactions_dates: nil,
                  ach_fraud_transactions_total_amount: nil,
                  ach_returned_transactions_count: nil,
                  ach_returned_transactions_dates: nil,
                  ach_returned_transactions_total_amount: nil,
                  applications_approved_count: nil,
                  applications_count: nil,
                  applications_dates: nil,
                  applications_declined_count: nil,
                  applications_fraud_count: nil,
                  card_disputed_transactions_count: nil,
                  card_disputed_transactions_dates: nil,
                  card_disputed_transactions_total_amount: nil,
                  card_fraud_transactions_count: nil,
                  card_fraud_transactions_dates: nil,
                  card_fraud_transactions_total_amount: nil,
                  card_stopped_transactions_count: nil,
                  card_stopped_transactions_dates: nil,
                  user_active_profile_count: nil,
                  user_address_count: nil,
                  user_closed_profile_count: nil,
                  user_dob_count: nil,
                  user_email_count: nil,
                  user_institution_count: nil,
                  user_mobile_count: nil
                )
                end

                sig do
                  override.returns(
                    {
                      accounts_active_count: T.nilable(Integer),
                      accounts_closed_count: T.nilable(Integer),
                      accounts_closed_dates: T.nilable(T::Array[Date]),
                      accounts_count: T.nilable(Integer),
                      accounts_fraud_count: T.nilable(Integer),
                      accounts_fraud_labeled_dates: T.nilable(T::Array[Date]),
                      accounts_fraud_loss_total_amount: T.nilable(Float),
                      ach_fraud_transactions_count: T.nilable(Integer),
                      ach_fraud_transactions_dates: T.nilable(T::Array[Date]),
                      ach_fraud_transactions_total_amount: T.nilable(Float),
                      ach_returned_transactions_count: T.nilable(Integer),
                      ach_returned_transactions_dates:
                        T.nilable(T::Array[Date]),
                      ach_returned_transactions_total_amount: T.nilable(Float),
                      applications_approved_count: T.nilable(Integer),
                      applications_count: T.nilable(Integer),
                      applications_dates: T.nilable(T::Array[Date]),
                      applications_declined_count: T.nilable(Integer),
                      applications_fraud_count: T.nilable(Integer),
                      card_disputed_transactions_count: T.nilable(Integer),
                      card_disputed_transactions_dates:
                        T.nilable(T::Array[Date]),
                      card_disputed_transactions_total_amount: T.nilable(Float),
                      card_fraud_transactions_count: T.nilable(Integer),
                      card_fraud_transactions_dates: T.nilable(T::Array[Date]),
                      card_fraud_transactions_total_amount: T.nilable(Float),
                      card_stopped_transactions_count: T.nilable(Integer),
                      card_stopped_transactions_dates:
                        T.nilable(T::Array[Date]),
                      user_active_profile_count: T.nilable(Integer),
                      user_address_count: T.nilable(Integer),
                      user_closed_profile_count: T.nilable(Integer),
                      user_dob_count: T.nilable(Integer),
                      user_email_count: T.nilable(Integer),
                      user_institution_count: T.nilable(Integer),
                      user_mobile_count: T.nilable(Integer)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class WatchList < Straddle::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList,
                    Straddle::Internal::AnyHash
                  )
                end

              # Specific codes related to the Straddle watchlist screening results.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :codes

              sig do
                returns(
                  T.nilable(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol
                  )
                )
              end
              attr_reader :decision

              sig do
                params(
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::OrSymbol
                ).void
              end
              attr_writer :decision

              # Information about any matches found during screening.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :matched

              # Information about any matches found during screening.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match
                    ]
                  )
                )
              end
              attr_accessor :matches

              sig do
                params(
                  codes: T.nilable(T::Array[String]),
                  decision:
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::OrSymbol,
                  matched: T.nilable(T::Array[String]),
                  matches:
                    T.nilable(
                      T::Array[
                        Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::OrHash
                      ]
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # Specific codes related to the Straddle watchlist screening results.
                codes: nil,
                decision: nil,
                # Information about any matches found during screening.
                matched: nil,
                # Information about any matches found during screening.
                matches: nil
              )
              end

              sig do
                override.returns(
                  {
                    codes: T.nilable(T::Array[String]),
                    decision:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol,
                    matched: T.nilable(T::Array[String]),
                    matches:
                      T.nilable(
                        T::Array[
                          Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match
                        ]
                      )
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
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACCEPT =
                  T.let(
                    :accept,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol
                  )
                REJECT =
                  T.let(
                    :reject,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol
                  )
                REVIEW =
                  T.let(
                    :review,
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Match < Straddle::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match,
                      Straddle::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                  )
                end
                attr_accessor :correlation

                # The name of the list the match was found.
                sig { returns(String) }
                attr_accessor :list_name

                # Data fields that matched.
                sig { returns(T::Array[String]) }
                attr_accessor :match_fields

                # Relevent Urls to review.
                sig { returns(T::Array[String]) }
                attr_accessor :urls

                sig do
                  params(
                    correlation:
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::OrSymbol,
                    list_name: String,
                    match_fields: T::Array[String],
                    urls: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  correlation:,
                  # The name of the list the match was found.
                  list_name:,
                  # Data fields that matched.
                  match_fields:,
                  # Relevent Urls to review.
                  urls:
                )
                end

                sig do
                  override.returns(
                    {
                      correlation:
                        Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol,
                      list_name: String,
                      match_fields: T::Array[String],
                      urls: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                module Correlation
                  extend Straddle::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  LOW_CONFIDENCE =
                    T.let(
                      :low_confidence,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                    )
                  POTENTIAL_MATCH =
                    T.let(
                      :potential_match,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                    )
                  LIKELY_MATCH =
                    T.let(
                      :likely_match,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                    )
                  HIGH_CONFIDENCE =
                    T.let(
                      :high_confidence,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                    )
                  UNKNOWN =
                    T.let(
                      :unknown,
                      Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation::TaggedSymbol
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
              T.all(Symbol, Straddle::Customers::CustomerReviewV1::ResponseType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Customers::CustomerReviewV1::ResponseType::TaggedSymbol
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
