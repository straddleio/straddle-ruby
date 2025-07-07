# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Customers#create
    class CustomerV1 < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::CustomerV1::Data]
      required :data, -> { Straddle::CustomerV1::Data }

      # @!attribute meta
      #   Metadata about the API request, including an identifier and timestamp.
      #
      #   @return [Straddle::Models::ResponseMetadata]
      required :meta, -> { Straddle::ResponseMetadata }

      # @!attribute response_type
      #   Indicates the structure of the returned content.
      #
      #   - "object" means the `data` field contains a single JSON object.
      #   - "array" means the `data` field contains an array of objects.
      #   - "error" means the `data` field contains an error object with details of the
      #     issue.
      #   - "none" means no data is returned.
      #
      #   @return [Symbol, Straddle::Models::CustomerV1::ResponseType]
      required :response_type, enum: -> { Straddle::CustomerV1::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CustomerV1} for more details.
      #
      #   @param data [Straddle::Models::CustomerV1::Data]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
      #
      #   @param response_type [Symbol, Straddle::Models::CustomerV1::ResponseType] Indicates the structure of the returned content.

      # @see Straddle::Models::CustomerV1#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the customer.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the customer record was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute email
        #   The customer's email address.
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   Full name of the individual or business name.
        #
        #   @return [String]
        required :name, String

        # @!attribute phone
        #   The customer's phone number in E.164 format.
        #
        #   @return [String]
        required :phone, String

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::CustomerV1::Data::Status]
        required :status, enum: -> { Straddle::CustomerV1::Data::Status }

        # @!attribute type
        #
        #   @return [Symbol, Straddle::Models::CustomerV1::Data::Type]
        required :type, enum: -> { Straddle::CustomerV1::Data::Type }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the customer record.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute address
        #   An object containing the customer's address. This is optional, but if provided,
        #   all required fields must be present.
        #
        #   @return [Straddle::Models::CustomerAddressV1, nil]
        optional :address, -> { Straddle::CustomerAddressV1 }, nil?: true

        # @!attribute compliance_profile
        #   PII required to trigger Patriot Act compliant KYC verification.
        #
        #   @return [Straddle::Models::CustomerV1::Data::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile, nil]
        optional :compliance_profile, union: -> { Straddle::CustomerV1::Data::ComplianceProfile }, nil?: true

        # @!attribute config
        #
        #   @return [Straddle::Models::CustomerV1::Data::Config, nil]
        optional :config, -> { Straddle::CustomerV1::Data::Config }

        # @!attribute device
        #
        #   @return [Straddle::Models::CustomerV1::Data::Device, nil]
        optional :device, -> { Straddle::CustomerV1::Data::Device }

        # @!attribute external_id
        #   Unique identifier for the customer in your database, used for cross-referencing
        #   between Straddle and your systems.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
        #   information about the customer in a structured format.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

        # @!method initialize(id:, created_at:, email:, name:, phone:, status:, type:, updated_at:, address: nil, compliance_profile: nil, config: nil, device: nil, external_id: nil, metadata: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::CustomerV1::Data} for more details.
        #
        #   @param id [String] Unique identifier for the customer.
        #
        #   @param created_at [Time] Timestamp of when the customer record was created.
        #
        #   @param email [String] The customer's email address.
        #
        #   @param name [String] Full name of the individual or business name.
        #
        #   @param phone [String] The customer's phone number in E.164 format.
        #
        #   @param status [Symbol, Straddle::Models::CustomerV1::Data::Status]
        #
        #   @param type [Symbol, Straddle::Models::CustomerV1::Data::Type]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
        #
        #   @param address [Straddle::Models::CustomerAddressV1, nil] An object containing the customer's address. This is optional, but if provided,
        #
        #   @param compliance_profile [Straddle::Models::CustomerV1::Data::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile, nil] PII required to trigger Patriot Act compliant KYC verification.
        #
        #   @param config [Straddle::Models::CustomerV1::Data::Config]
        #
        #   @param device [Straddle::Models::CustomerV1::Data::Device]
        #
        #   @param external_id [String, nil] Unique identifier for the customer in your database, used for cross-referencing
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional

        # @see Straddle::Models::CustomerV1::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          PENDING = :pending
          REVIEW = :review
          VERIFIED = :verified
          INACTIVE = :inactive
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::CustomerV1::Data#type
        module Type
          extend Straddle::Internal::Type::Enum

          INDIVIDUAL = :individual
          BUSINESS = :business
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # PII required to trigger Patriot Act compliant KYC verification.
        #
        # @see Straddle::Models::CustomerV1::Data#compliance_profile
        module ComplianceProfile
          extend Straddle::Internal::Type::Union

          # PII required to trigger Patriot Act compliant KYC verification.
          variant -> { Straddle::CustomerV1::Data::ComplianceProfile::IndividualComplianceProfile }

          # Business registration data required to trigger Patriot Act compliant KYB verification.
          variant -> { Straddle::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile }

          class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
            # @!attribute dob
            #   Masked date of birth in \***\*-**-\*\* format.
            #
            #   @return [Date, nil]
            required :dob, Date, nil?: true

            # @!attribute ssn
            #   Masked Social Security Number in the format **\*-**-\*\*\*\*.
            #
            #   @return [String, nil]
            required :ssn, String, nil?: true

            # @!method initialize(dob:, ssn:)
            #   PII required to trigger Patriot Act compliant KYC verification.
            #
            #   @param dob [Date, nil] Masked date of birth in \***\*-**-\*\* format.
            #
            #   @param ssn [String, nil] Masked Social Security Number in the format **\*-**-\*\*\*\*.
          end

          class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
            # @!attribute ein
            #   Masked Employer Identification Number in the format **-**\*****
            #
            #   @return [String, nil]
            required :ein, String, nil?: true

            # @!attribute legal_business_name
            #   The official registered name of the business. This name should be correlated
            #   with the `ein` value.
            #
            #   @return [String, nil]
            required :legal_business_name, String, nil?: true

            # @!attribute representatives
            #   A list of people related to the company. Only valid where customer type is
            #   'business'.
            #
            #   @return [Array<Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative>, nil]
            optional :representatives,
                     -> {
                       Straddle::Internal::Type::ArrayOf[Straddle::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative]
                     },
                     nil?: true

            # @!attribute website
            #   Official business website URL. Optional but recommended for enhanced KYB.
            #
            #   @return [String, nil]
            optional :website, String, nil?: true

            # @!method initialize(ein:, legal_business_name:, representatives: nil, website: nil)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile}
            #   for more details.
            #
            #   Business registration data required to trigger Patriot Act compliant KYB
            #   verification.
            #
            #   @param ein [String, nil] Masked Employer Identification Number in the format **-**\*****
            #
            #   @param legal_business_name [String, nil] The official registered name of the business. This name should be correlated wit
            #
            #   @param representatives [Array<Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile::Representative>, nil] A list of people related to the company. Only valid where customer type is 'busi
            #
            #   @param website [String, nil] Official business website URL. Optional but recommended for enhanced KYB.

            class Representative < Straddle::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute email
              #
              #   @return [String, nil]
              optional :email, String, nil?: true

              # @!attribute phone
              #
              #   @return [String, nil]
              optional :phone, String, nil?: true

              # @!method initialize(name:, email: nil, phone: nil)
              #   @param name [String]
              #   @param email [String, nil]
              #   @param phone [String, nil]
            end
          end

          # @!method self.variants
          #   @return [Array(Straddle::Models::CustomerV1::Data::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerV1::Data::ComplianceProfile::BusinessComplianceProfile)]
        end

        # @see Straddle::Models::CustomerV1::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute processing_method
          #
          #   @return [Symbol, Straddle::Models::CustomerV1::Data::Config::ProcessingMethod, nil]
          optional :processing_method, enum: -> { Straddle::CustomerV1::Data::Config::ProcessingMethod }

          # @!attribute sandbox_outcome
          #
          #   @return [Symbol, Straddle::Models::CustomerV1::Data::Config::SandboxOutcome, nil]
          optional :sandbox_outcome, enum: -> { Straddle::CustomerV1::Data::Config::SandboxOutcome }

          # @!method initialize(processing_method: nil, sandbox_outcome: nil)
          #   @param processing_method [Symbol, Straddle::Models::CustomerV1::Data::Config::ProcessingMethod]
          #   @param sandbox_outcome [Symbol, Straddle::Models::CustomerV1::Data::Config::SandboxOutcome]

          # @see Straddle::Models::CustomerV1::Data::Config#processing_method
          module ProcessingMethod
            extend Straddle::Internal::Type::Enum

            INLINE = :inline
            BACKGROUND = :background
            SKIP = :skip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::CustomerV1::Data::Config#sandbox_outcome
          module SandboxOutcome
            extend Straddle::Internal::Type::Enum

            STANDARD = :standard
            VERIFIED = :verified
            REJECTED = :rejected
            REVIEW = :review

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::CustomerV1::Data#device
        class Device < Straddle::Internal::Type::BaseModel
          # @!attribute ip_address
          #   The customer's IP address at the time of profile creation. Use `0.0.0.0` to
          #   represent an offline customer registration.
          #
          #   @return [String]
          required :ip_address, String

          # @!method initialize(ip_address:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::CustomerV1::Data::Device} for more details.
          #
          #   @param ip_address [String] The customer's IP address at the time of profile creation. Use `0.0.0.0` to repr
        end
      end

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      #
      # @see Straddle::Models::CustomerV1#response_type
      module ResponseType
        extend Straddle::Internal::Type::Enum

        OBJECT = :object
        ARRAY = :array
        ERROR = :error
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
