# typed: strong

module Straddle
  module Models
    class CustomerUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerUpdateParams, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::DeviceUnmaskedV1) }
      attr_reader :device

      sig { params(device: Straddle::DeviceUnmaskedV1::OrHash).void }
      attr_writer :device

      # The customer's email address.
      sig { returns(String) }
      attr_accessor :email

      # The customer's full name or business name.
      sig { returns(String) }
      attr_accessor :name

      # The customer's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :phone

      sig { returns(Straddle::CustomerUpdateParams::Status::OrSymbol) }
      attr_accessor :status

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
            T.any(
              Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile,
              Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile
            )
          )
        )
      end
      attr_accessor :compliance_profile

      # Unique identifier for the customer in your database, used for cross-referencing
      # between Straddle and your systems.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 additional user-defined key-value pairs. Useful for storing additional
      # information about the customer in a structured format.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          device: Straddle::DeviceUnmaskedV1::OrHash,
          email: String,
          name: String,
          phone: String,
          status: Straddle::CustomerUpdateParams::Status::OrSymbol,
          address: T.nilable(Straddle::CustomerAddressV1::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        device:,
        # The customer's email address.
        email:,
        # The customer's full name or business name.
        name:,
        # The customer's phone number in E.164 format.
        phone:,
        status:,
        # An object containing the customer's address. This is optional, but if provided,
        # all required fields must be present.
        address: nil,
        # Individual PII data required to trigger Patriot Act compliant KYC verification.
        compliance_profile: nil,
        # Unique identifier for the customer in your database, used for cross-referencing
        # between Straddle and your systems.
        external_id: nil,
        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the customer in a structured format.
        metadata: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            device: Straddle::DeviceUnmaskedV1,
            email: String,
            name: String,
            phone: String,
            status: Straddle::CustomerUpdateParams::Status::OrSymbol,
            address: T.nilable(Straddle::CustomerAddressV1),
            compliance_profile:
              T.nilable(
                T.any(
                  Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile,
                  Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile
                )
              ),
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CustomerUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Straddle::CustomerUpdateParams::Status::TaggedSymbol)
        REVIEW =
          T.let(:review, Straddle::CustomerUpdateParams::Status::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Straddle::CustomerUpdateParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::CustomerUpdateParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::CustomerUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerUpdateParams::Status::TaggedSymbol]
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
              Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile,
              Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile
            )
          end

        class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile,
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
                Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile,
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
                  Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::Representative
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
                    Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::Representative::OrHash
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
                      Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::Representative
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
                  Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::Representative,
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
              Straddle::CustomerUpdateParams::ComplianceProfile::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
