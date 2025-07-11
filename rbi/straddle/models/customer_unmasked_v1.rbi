# typed: strong

module Straddle
  module Models
    class CustomerUnmaskedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerUnmaskedV1, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::CustomerUnmaskedV1::Data) }
      attr_reader :data

      sig { params(data: Straddle::CustomerUnmaskedV1::Data::OrHash).void }
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
      sig { returns(Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::CustomerUnmaskedV1::Data::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::CustomerUnmaskedV1::ResponseType::OrSymbol
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
            data: Straddle::CustomerUnmaskedV1::Data,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CustomerUnmaskedV1::Data,
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
          returns(Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(Straddle::CustomerUnmaskedV1::Data::Type::TaggedSymbol) }
        attr_accessor :type

        # Timestamp of the most recent update to the customer record.
        sig { returns(Time) }
        attr_accessor :updated_at

        # An object containing the customer's address. This is optional, but if provided,
        # all required fields must be present.
        sig { returns(T.nilable(Straddle::CustomerAddressV1)) }
        attr_reader :address

        sig do
          params(address: T.nilable(Straddle::CustomerAddressV1::OrHash)).void
        end
        attr_writer :address

        # Individual PII data required to trigger Patriot Act compliant KYC verification.
        sig do
          returns(
            T.nilable(
              Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::Variants
            )
          )
        end
        attr_accessor :compliance_profile

        sig { returns(T.nilable(Straddle::CustomerUnmaskedV1::Data::Config)) }
        attr_reader :config

        sig do
          params(
            config: Straddle::CustomerUnmaskedV1::Data::Config::OrHash
          ).void
        end
        attr_writer :config

        sig { returns(T.nilable(Straddle::DeviceUnmaskedV1)) }
        attr_reader :device

        sig { params(device: Straddle::DeviceUnmaskedV1::OrHash).void }
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
            status: Straddle::CustomerUnmaskedV1::Data::Status::OrSymbol,
            type: Straddle::CustomerUnmaskedV1::Data::Type::OrSymbol,
            updated_at: Time,
            address: T.nilable(Straddle::CustomerAddressV1::OrHash),
            compliance_profile:
              T.nilable(
                T.any(
                  Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::IndividualComplianceProfile::OrHash,
                  Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile::OrHash
                )
              ),
            config: Straddle::CustomerUnmaskedV1::Data::Config::OrHash,
            device: Straddle::DeviceUnmaskedV1::OrHash,
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
          # Individual PII data required to trigger Patriot Act compliant KYC verification.
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
              status: Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol,
              type: Straddle::CustomerUnmaskedV1::Data::Type::TaggedSymbol,
              updated_at: Time,
              address: T.nilable(Straddle::CustomerAddressV1),
              compliance_profile:
                T.nilable(
                  Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::Variants
                ),
              config: Straddle::CustomerUnmaskedV1::Data::Config,
              device: Straddle::DeviceUnmaskedV1,
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
              T.all(Symbol, Straddle::CustomerUnmaskedV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::CustomerUnmaskedV1::Data::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::CustomerUnmaskedV1::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDIVIDUAL =
            T.let(
              :individual,
              Straddle::CustomerUnmaskedV1::Data::Type::TaggedSymbol
            )
          BUSINESS =
            T.let(
              :business,
              Straddle::CustomerUnmaskedV1::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::CustomerUnmaskedV1::Data::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Individual PII data required to trigger Patriot Act compliant KYC verification.
        module ComplianceProfile
          extend Straddle::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::IndividualComplianceProfile,
                Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile
              )
            end

          class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::IndividualComplianceProfile,
                  Straddle::Internal::AnyHash
                )
              end

            # Date of birth (YYYY-MM-DD). Required for Patriot Act-compliant KYC verification.
            sig { returns(T.nilable(Date)) }
            attr_accessor :dob

            # Social Security Number (format XXX-XX-XXXX). Required for Patriot Act-compliant
            # KYC verification.
            sig { returns(T.nilable(String)) }
            attr_accessor :ssn

            # Individual PII data required to trigger Patriot Act compliant KYC verification.
            sig do
              params(dob: T.nilable(Date), ssn: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # Date of birth (YYYY-MM-DD). Required for Patriot Act-compliant KYC verification.
              dob:,
              # Social Security Number (format XXX-XX-XXXX). Required for Patriot Act-compliant
              # KYC verification.
              ssn:
            )
            end

            sig do
              override.returns({ dob: T.nilable(Date), ssn: T.nilable(String) })
            end
            def to_hash
            end
          end

          class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile,
                  Straddle::Internal::AnyHash
                )
              end

            # Employer Identification Number (format XX-XXXXXXX). Required for Patriot
            # Act-compliant KYB verification.
            sig { returns(T.nilable(String)) }
            attr_accessor :ein

            # Official registered business name as listed with the IRS. This value will be
            # matched against the 'legal_business name'.
            sig { returns(T.nilable(String)) }
            attr_accessor :legal_business_name

            # A list of people related to the company. Only valid where customer type is
            # 'business'.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative
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
                      Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative::OrHash
                    ]
                  ),
                website: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Employer Identification Number (format XX-XXXXXXX). Required for Patriot
              # Act-compliant KYB verification.
              ein:,
              # Official registered business name as listed with the IRS. This value will be
              # matched against the 'legal_business name'.
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
                        Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative
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
                    Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative,
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
                Straddle::CustomerUnmaskedV1::Data::ComplianceProfile::Variants
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
                Straddle::CustomerUnmaskedV1::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            )
          end
          attr_reader :processing_method

          sig do
            params(
              processing_method:
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::OrSymbol
            ).void
          end
          attr_writer :processing_method

          sig do
            returns(
              T.nilable(
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            )
          end
          attr_reader :sandbox_outcome

          sig do
            params(
              sandbox_outcome:
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::OrSymbol
            ).void
          end
          attr_writer :sandbox_outcome

          sig do
            params(
              processing_method:
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::OrSymbol,
              sandbox_outcome:
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(processing_method: nil, sandbox_outcome: nil)
          end

          sig do
            override.returns(
              {
                processing_method:
                  Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol,
                sandbox_outcome:
                  Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
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
                  Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INLINE =
              T.let(
                :inline,
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            BACKGROUND =
              T.let(
                :background,
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )
            SKIP =
              T.let(
                :skip,
                Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::CustomerUnmaskedV1::Data::Config::ProcessingMethod::TaggedSymbol
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
                  Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )
            REVIEW =
              T.let(
                :review,
                Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::CustomerUnmaskedV1::Data::Config::SandboxOutcome::TaggedSymbol
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
            T.all(Symbol, Straddle::CustomerUnmaskedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(:none, Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerUnmaskedV1::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
