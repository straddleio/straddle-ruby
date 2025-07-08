# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Customers#create
    class CustomerCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute device
      #
      #   @return [Straddle::Models::DeviceUnmaskedV1]
      required :device, -> { Straddle::DeviceUnmaskedV1 }

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
      #   The customer's phone number in E.164 format. Mobile number is preferred.
      #
      #   @return [String]
      required :phone, String

      # @!attribute type
      #
      #   @return [Symbol, Straddle::Models::CustomerCreateParams::Type]
      required :type, enum: -> { Straddle::CustomerCreateParams::Type }

      # @!attribute address
      #   An object containing the customer's address. **This is optional.** If used, all
      #   required fields must be present.
      #
      #   @return [Straddle::Models::CustomerAddressV1, nil]
      optional :address, -> { Straddle::CustomerAddressV1 }, nil?: true

      # @!attribute compliance_profile
      #   An object containing the customer's compliance profile. **This is optional.** If
      #   all required fields must be present for the appropriate customer type.
      #
      #   @return [Straddle::Models::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile, nil]
      optional :compliance_profile,
               union: -> {
                 Straddle::CustomerCreateParams::ComplianceProfile
               },
               nil?: true

      # @!attribute config
      #
      #   @return [Straddle::Models::CustomerCreateParams::Config, nil]
      optional :config, -> { Straddle::CustomerCreateParams::Config }

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

      # @!attribute correlation_id
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(device:, email:, name:, phone:, type:, address: nil, compliance_profile: nil, config: nil, external_id: nil, metadata: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CustomerCreateParams} for more details.
      #
      #   @param device [Straddle::Models::DeviceUnmaskedV1]
      #
      #   @param email [String] The customer's email address.
      #
      #   @param name [String] Full name of the individual or business name.
      #
      #   @param phone [String] The customer's phone number in E.164 format. Mobile number is preferred.
      #
      #   @param type [Symbol, Straddle::Models::CustomerCreateParams::Type]
      #
      #   @param address [Straddle::Models::CustomerAddressV1, nil] An object containing the customer's address. **This is optional.** If used, all
      #
      #   @param compliance_profile [Straddle::Models::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile, nil] An object containing the customer's compliance profile. **This is optional.** If
      #
      #   @param config [Straddle::Models::CustomerCreateParams::Config]
      #
      #   @param external_id [String, nil] Unique identifier for the customer in your database, used for cross-referencing
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
      #
      #   @param correlation_id [String]
      #
      #   @param request_id [String]
      #
      #   @param straddle_account_id [String]
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Straddle::Internal::Type::Enum

        INDIVIDUAL = :individual
        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # An object containing the customer's compliance profile. **This is optional.** If
      # all required fields must be present for the appropriate customer type.
      module ComplianceProfile
        extend Straddle::Internal::Type::Union

        # Individual PII data required to trigger Patriot Act compliant KYC verification.
        variant -> { Straddle::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile }

        # Business registration data required to trigger Patriot Act compliant KYB verification.
        variant -> { Straddle::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile }

        class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
          # @!attribute dob
          #   Date of birth (YYYY-MM-DD). Required for Patriot Act-compliant KYC verification.
          #
          #   @return [Date, nil]
          required :dob, Date, nil?: true

          # @!attribute ssn
          #   Social Security Number (format XXX-XX-XXXX). Required for Patriot Act-compliant
          #   KYC verification.
          #
          #   @return [String, nil]
          required :ssn, String, nil?: true

          # @!method initialize(dob:, ssn:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile}
          #   for more details.
          #
          #   Individual PII data required to trigger Patriot Act compliant KYC verification.
          #
          #   @param dob [Date, nil] Date of birth (YYYY-MM-DD). Required for Patriot Act-compliant KYC verification.
          #
          #   @param ssn [String, nil] Social Security Number (format XXX-XX-XXXX). Required for Patriot Act-compliant
        end

        class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
          # @!attribute ein
          #   Employer Identification Number (format XX-XXXXXXX). Required for Patriot
          #   Act-compliant KYB verification.
          #
          #   @return [String, nil]
          required :ein, String, nil?: true

          # @!attribute legal_business_name
          #   Official registered business name as listed with the IRS. This value will be
          #   matched against the 'legal_business name'.
          #
          #   @return [String, nil]
          required :legal_business_name, String, nil?: true

          # @!attribute representatives
          #   A list of people related to the company. Only valid where customer type is
          #   'business'.
          #
          #   @return [Array<Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile::Representative>, nil]
          optional :representatives,
                   -> {
                     Straddle::Internal::Type::ArrayOf[Straddle::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile::Representative]
                   },
                   nil?: true

          # @!attribute website
          #   Official business website URL. Optional but recommended for enhanced KYB.
          #
          #   @return [String, nil]
          optional :website, String, nil?: true

          # @!method initialize(ein:, legal_business_name:, representatives: nil, website: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile}
          #   for more details.
          #
          #   Business registration data required to trigger Patriot Act compliant KYB
          #   verification.
          #
          #   @param ein [String, nil] Employer Identification Number (format XX-XXXXXXX). Required for Patriot Act-com
          #
          #   @param legal_business_name [String, nil] Official registered business name as listed with the IRS. This value will be mat
          #
          #   @param representatives [Array<Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile::Representative>, nil] A list of people related to the company. Only valid where customer type is 'busi
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
        #   @return [Array(Straddle::Models::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile)]
      end

      class Config < Straddle::Internal::Type::BaseModel
        # @!attribute processing_method
        #
        #   @return [Symbol, Straddle::Models::CustomerCreateParams::Config::ProcessingMethod, nil]
        optional :processing_method, enum: -> { Straddle::CustomerCreateParams::Config::ProcessingMethod }

        # @!attribute sandbox_outcome
        #
        #   @return [Symbol, Straddle::Models::CustomerCreateParams::Config::SandboxOutcome, nil]
        optional :sandbox_outcome, enum: -> { Straddle::CustomerCreateParams::Config::SandboxOutcome }

        # @!method initialize(processing_method: nil, sandbox_outcome: nil)
        #   @param processing_method [Symbol, Straddle::Models::CustomerCreateParams::Config::ProcessingMethod]
        #   @param sandbox_outcome [Symbol, Straddle::Models::CustomerCreateParams::Config::SandboxOutcome]

        # @see Straddle::Models::CustomerCreateParams::Config#processing_method
        module ProcessingMethod
          extend Straddle::Internal::Type::Enum

          INLINE = :inline
          BACKGROUND = :background
          SKIP = :skip

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::CustomerCreateParams::Config#sandbox_outcome
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
    end
  end
end
