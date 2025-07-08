# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      # @see Straddle::Resources::Customers::Review#get
      class CustomerReviewV1 < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Customers::CustomerReviewV1::Data]
        required :data, -> { Straddle::Customers::CustomerReviewV1::Data }

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
        #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::ResponseType]
        required :response_type, enum: -> { Straddle::Customers::CustomerReviewV1::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Customers::CustomerReviewV1} for more details.
        #
        #   @param data [Straddle::Models::Customers::CustomerReviewV1::Data]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata about the API request, including an identifier and timestamp.
        #
        #   @param response_type [Symbol, Straddle::Models::Customers::CustomerReviewV1::ResponseType] Indicates the structure of the returned content.

        # @see Straddle::Models::Customers::CustomerReviewV1#data
        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute customer_details
          #
          #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails]
          required :customer_details, -> { Straddle::Customers::CustomerReviewV1::Data::CustomerDetails }

          # @!attribute identity_details
          #
          #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails, nil]
          optional :identity_details, -> { Straddle::Customers::CustomerReviewV1::Data::IdentityDetails }

          # @!method initialize(customer_details:, identity_details: nil)
          #   @param customer_details [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails]
          #   @param identity_details [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails]

          # @see Straddle::Models::Customers::CustomerReviewV1::Data#customer_details
          class CustomerDetails < Straddle::Internal::Type::BaseModel
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
            #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Status]
            required :status,
                     enum: -> {
                       Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Status
                     }

            # @!attribute type
            #
            #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Type]
            required :type, enum: -> { Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Type }

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
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile, nil]
            optional :compliance_profile,
                     union: -> {
                       Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile
                     },
                     nil?: true

            # @!attribute config
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config, nil]
            optional :config, -> { Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config }

            # @!attribute device
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Device, nil]
            optional :device, -> { Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Device }

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
            #   {Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails} for more
            #   details.
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
            #   @param status [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Status]
            #
            #   @param type [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Type]
            #
            #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
            #
            #   @param address [Straddle::Models::CustomerAddressV1, nil] An object containing the customer's address. This is optional, but if provided,
            #
            #   @param compliance_profile [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile, nil] PII required to trigger Patriot Act compliant KYC verification.
            #
            #   @param config [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config]
            #
            #   @param device [Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Device]
            #
            #   @param external_id [String, nil] Unique identifier for the customer in your database, used for cross-referencing
            #
            #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails#status
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

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails#type
            module Type
              extend Straddle::Internal::Type::Enum

              INDIVIDUAL = :individual
              BUSINESS = :business

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # PII required to trigger Patriot Act compliant KYC verification.
            #
            # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails#compliance_profile
            module ComplianceProfile
              extend Straddle::Internal::Type::Union

              # PII required to trigger Patriot Act compliant KYC verification.
              variant -> {
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile
              }

              # Business registration data required to trigger Patriot Act compliant KYB verification.
              variant -> {
                Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile
              }

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
                #   @return [Array<Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative>, nil]
                optional :representatives,
                         -> do
                           Straddle::Internal::Type::ArrayOf[
                             Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative
                           ]
                         end,
                         nil?: true

                # @!attribute website
                #   Official business website URL. Optional but recommended for enhanced KYB.
                #
                #   @return [String, nil]
                optional :website, String, nil?: true

                # @!method initialize(ein:, legal_business_name:, representatives: nil, website: nil)
                #   Some parameter documentations has been truncated, see
                #   {Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile}
                #   for more details.
                #
                #   Business registration data required to trigger Patriot Act compliant KYB
                #   verification.
                #
                #   @param ein [String, nil] Masked Employer Identification Number in the format **-**\*****
                #
                #   @param legal_business_name [String, nil] The official registered name of the business. This name should be correlated wit
                #
                #   @param representatives [Array<Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile::Representative>, nil] A list of people related to the company. Only valid where customer type is 'busi
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
              #   @return [Array(Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::ComplianceProfile::BusinessComplianceProfile)]
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails#config
            class Config < Straddle::Internal::Type::BaseModel
              # @!attribute processing_method
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod, nil]
              optional :processing_method,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod
                       }

              # @!attribute sandbox_outcome
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome, nil]
              optional :sandbox_outcome,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome
                       }

              # @!method initialize(processing_method: nil, sandbox_outcome: nil)
              #   @param processing_method [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config::ProcessingMethod]
              #   @param sandbox_outcome [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config::SandboxOutcome]

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config#processing_method
              module ProcessingMethod
                extend Straddle::Internal::Type::Enum

                INLINE = :inline
                BACKGROUND = :background
                SKIP = :skip

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Config#sandbox_outcome
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

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails#device
            class Device < Straddle::Internal::Type::BaseModel
              # @!attribute ip_address
              #   The customer's IP address at the time of profile creation. Use `0.0.0.0` to
              #   represent an offline customer registration.
              #
              #   @return [String]
              required :ip_address, String

              # @!method initialize(ip_address:)
              #   Some parameter documentations has been truncated, see
              #   {Straddle::Models::Customers::CustomerReviewV1::Data::CustomerDetails::Device}
              #   for more details.
              #
              #   @param ip_address [String] The customer's IP address at the time of profile creation. Use `0.0.0.0` to repr
            end
          end

          # @see Straddle::Models::Customers::CustomerReviewV1::Data#identity_details
          class IdentityDetails < Straddle::Internal::Type::BaseModel
            # @!attribute breakdown
            #   Detailed breakdown of the customer verification results, including decisions,
            #   risk scores, correlation score, and more.
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown]
            required :breakdown,
                     -> {
                       Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown
                     }

            # @!attribute created_at
            #   Timestamp of when the review was initiated.
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute decision
            #
            #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Decision]
            required :decision,
                     enum: -> {
                       Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Decision
                     }

            # @!attribute review_id
            #   Unique identifier for the review.
            #
            #   @return [String]
            required :review_id, String

            # @!attribute updated_at
            #   Timestamp of the most recent update to the review.
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute kyc
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC, nil]
            optional :kyc, -> { Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC }

            # @!attribute messages
            #   Dictionary of all messages from the customer verification process.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :messages, Straddle::Internal::Type::HashOf[String], nil?: true

            # @!attribute network_alerts
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts, nil]
            optional :network_alerts,
                     -> { Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts }

            # @!attribute reputation
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation, nil]
            optional :reputation,
                     -> {
                       Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation
                     }

            # @!attribute watch_list
            #
            #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList, nil]
            optional :watch_list,
                     -> {
                       Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList
                     }

            # @!method initialize(breakdown:, created_at:, decision:, review_id:, updated_at:, kyc: nil, messages: nil, network_alerts: nil, reputation: nil, watch_list: nil)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails} for more
            #   details.
            #
            #   @param breakdown [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Breakdown] Detailed breakdown of the customer verification results, including decisions, ri
            #
            #   @param created_at [Time] Timestamp of when the review was initiated.
            #
            #   @param decision [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Decision]
            #
            #   @param review_id [String] Unique identifier for the review.
            #
            #   @param updated_at [Time] Timestamp of the most recent update to the review.
            #
            #   @param kyc [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC]
            #
            #   @param messages [Hash{Symbol=>String}, nil] Dictionary of all messages from the customer verification process.
            #
            #   @param network_alerts [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts]
            #
            #   @param reputation [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation]
            #
            #   @param watch_list [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList]

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#breakdown
            class Breakdown < Straddle::Internal::Type::BaseModel
              # @!attribute address
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :address, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute business_evaluation
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :business_evaluation, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute business_identification
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :business_identification, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute business_validation
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :business_validation, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute email
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :email, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute fraud
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :fraud, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute phone
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :phone, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!attribute synthetic
              #
              #   @return [Straddle::Models::Customers::IdentityVerificationBreakdownV1, nil]
              optional :synthetic, -> { Straddle::Customers::IdentityVerificationBreakdownV1 }

              # @!method initialize(address: nil, business_evaluation: nil, business_identification: nil, business_validation: nil, email: nil, fraud: nil, phone: nil, synthetic: nil)
              #   Detailed breakdown of the customer verification results, including decisions,
              #   risk scores, correlation score, and more.
              #
              #   @param address [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param business_evaluation [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param business_identification [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param business_validation [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param email [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param fraud [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param phone [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
              #   @param synthetic [Straddle::Models::Customers::IdentityVerificationBreakdownV1]
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#decision
            module Decision
              extend Straddle::Internal::Type::Enum

              ACCEPT = :accept
              REJECT = :reject
              REVIEW = :review

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#kyc
            class KYC < Straddle::Internal::Type::BaseModel
              # @!attribute validations
              #   Boolean values indicating the result of each validation in the KYC process.
              #
              #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations]
              required :validations,
                       -> { Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations }

              # @!attribute codes
              #   List of specific result codes from the KYC screening process.
              #
              #   @return [Array<String>, nil]
              optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute decision
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision, nil]
              optional :decision,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision
                       }

              # @!method initialize(validations:, codes: nil, decision: nil)
              #   @param validations [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Validations] Boolean values indicating the result of each validation in the KYC process.
              #
              #   @param codes [Array<String>, nil] List of specific result codes from the KYC screening process.
              #
              #   @param decision [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC::Decision]

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC#validations
              class Validations < Straddle::Internal::Type::BaseModel
                # @!attribute address
                #
                #   @return [Boolean, nil]
                optional :address, Straddle::Internal::Type::Boolean

                # @!attribute city
                #
                #   @return [Boolean, nil]
                optional :city, Straddle::Internal::Type::Boolean

                # @!attribute dob
                #
                #   @return [Boolean, nil]
                optional :dob, Straddle::Internal::Type::Boolean

                # @!attribute email
                #
                #   @return [Boolean, nil]
                optional :email, Straddle::Internal::Type::Boolean

                # @!attribute first_name
                #
                #   @return [Boolean, nil]
                optional :first_name, Straddle::Internal::Type::Boolean

                # @!attribute last_name
                #
                #   @return [Boolean, nil]
                optional :last_name, Straddle::Internal::Type::Boolean

                # @!attribute phone
                #
                #   @return [Boolean, nil]
                optional :phone, Straddle::Internal::Type::Boolean

                # @!attribute ssn
                #
                #   @return [Boolean, nil]
                optional :ssn, Straddle::Internal::Type::Boolean

                # @!attribute state
                #
                #   @return [Boolean, nil]
                optional :state, Straddle::Internal::Type::Boolean

                # @!attribute zip
                #
                #   @return [Boolean, nil]
                optional :zip, Straddle::Internal::Type::Boolean

                # @!method initialize(address: nil, city: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone: nil, ssn: nil, state: nil, zip: nil)
                #   Boolean values indicating the result of each validation in the KYC process.
                #
                #   @param address [Boolean]
                #   @param city [Boolean]
                #   @param dob [Boolean]
                #   @param email [Boolean]
                #   @param first_name [Boolean]
                #   @param last_name [Boolean]
                #   @param phone [Boolean]
                #   @param ssn [Boolean]
                #   @param state [Boolean]
                #   @param zip [Boolean]
              end

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::KYC#decision
              module Decision
                extend Straddle::Internal::Type::Enum

                ACCEPT = :accept
                REJECT = :reject
                REVIEW = :review

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#network_alerts
            class NetworkAlerts < Straddle::Internal::Type::BaseModel
              # @!attribute alerts
              #   Any alerts or flags raised during the consortium alert screening.
              #
              #   @return [Array<String>, nil]
              optional :alerts, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute codes
              #   List of specific result codes from the consortium alert screening.
              #
              #   @return [Array<String>, nil]
              optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute decision
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision, nil]
              optional :decision,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision
                       }

              # @!method initialize(alerts: nil, codes: nil, decision: nil)
              #   @param alerts [Array<String>, nil] Any alerts or flags raised during the consortium alert screening.
              #
              #   @param codes [Array<String>, nil] List of specific result codes from the consortium alert screening.
              #
              #   @param decision [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts::Decision]

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::NetworkAlerts#decision
              module Decision
                extend Straddle::Internal::Type::Enum

                ACCEPT = :accept
                REJECT = :reject
                REVIEW = :review

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#reputation
            class Reputation < Straddle::Internal::Type::BaseModel
              # @!attribute codes
              #   Specific codes related to the Straddle reputation screening results.
              #
              #   @return [Array<String>, nil]
              optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute decision
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision, nil]
              optional :decision,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision
                       }

              # @!attribute insights
              #
              #   @return [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights, nil]
              optional :insights,
                       -> {
                         Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights
                       }

              # @!attribute risk_score
              #
              #   @return [Float, nil]
              optional :risk_score, Float, nil?: true

              # @!method initialize(codes: nil, decision: nil, insights: nil, risk_score: nil)
              #   @param codes [Array<String>, nil] Specific codes related to the Straddle reputation screening results.
              #
              #   @param decision [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Decision]
              #
              #   @param insights [Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation::Insights]
              #
              #   @param risk_score [Float, nil]

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation#decision
              module Decision
                extend Straddle::Internal::Type::Enum

                ACCEPT = :accept
                REJECT = :reject
                REVIEW = :review

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::Reputation#insights
              class Insights < Straddle::Internal::Type::BaseModel
                # @!attribute accounts_active_count
                #
                #   @return [Integer, nil]
                optional :accounts_active_count, Integer, nil?: true

                # @!attribute accounts_closed_count
                #
                #   @return [Integer, nil]
                optional :accounts_closed_count, Integer, nil?: true

                # @!attribute accounts_closed_dates
                #
                #   @return [Array<Date>, nil]
                optional :accounts_closed_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute accounts_count
                #
                #   @return [Integer, nil]
                optional :accounts_count, Integer, nil?: true

                # @!attribute accounts_fraud_count
                #
                #   @return [Integer, nil]
                optional :accounts_fraud_count, Integer, nil?: true

                # @!attribute accounts_fraud_labeled_dates
                #
                #   @return [Array<Date>, nil]
                optional :accounts_fraud_labeled_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute accounts_fraud_loss_total_amount
                #
                #   @return [Float, nil]
                optional :accounts_fraud_loss_total_amount, Float, nil?: true

                # @!attribute ach_fraud_transactions_count
                #
                #   @return [Integer, nil]
                optional :ach_fraud_transactions_count, Integer, nil?: true

                # @!attribute ach_fraud_transactions_dates
                #
                #   @return [Array<Date>, nil]
                optional :ach_fraud_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute ach_fraud_transactions_total_amount
                #
                #   @return [Float, nil]
                optional :ach_fraud_transactions_total_amount, Float, nil?: true

                # @!attribute ach_returned_transactions_count
                #
                #   @return [Integer, nil]
                optional :ach_returned_transactions_count, Integer, nil?: true

                # @!attribute ach_returned_transactions_dates
                #
                #   @return [Array<Date>, nil]
                optional :ach_returned_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute ach_returned_transactions_total_amount
                #
                #   @return [Float, nil]
                optional :ach_returned_transactions_total_amount, Float, nil?: true

                # @!attribute applications_approved_count
                #
                #   @return [Integer, nil]
                optional :applications_approved_count, Integer, nil?: true

                # @!attribute applications_count
                #
                #   @return [Integer, nil]
                optional :applications_count, Integer, nil?: true

                # @!attribute applications_dates
                #
                #   @return [Array<Date>, nil]
                optional :applications_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute applications_declined_count
                #
                #   @return [Integer, nil]
                optional :applications_declined_count, Integer, nil?: true

                # @!attribute applications_fraud_count
                #
                #   @return [Integer, nil]
                optional :applications_fraud_count, Integer, nil?: true

                # @!attribute card_disputed_transactions_count
                #
                #   @return [Integer, nil]
                optional :card_disputed_transactions_count, Integer, nil?: true

                # @!attribute card_disputed_transactions_dates
                #
                #   @return [Array<Date>, nil]
                optional :card_disputed_transactions_dates,
                         Straddle::Internal::Type::ArrayOf[Date],
                         nil?: true

                # @!attribute card_disputed_transactions_total_amount
                #
                #   @return [Float, nil]
                optional :card_disputed_transactions_total_amount, Float, nil?: true

                # @!attribute card_fraud_transactions_count
                #
                #   @return [Integer, nil]
                optional :card_fraud_transactions_count, Integer, nil?: true

                # @!attribute card_fraud_transactions_dates
                #
                #   @return [Array<Date>, nil]
                optional :card_fraud_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute card_fraud_transactions_total_amount
                #
                #   @return [Float, nil]
                optional :card_fraud_transactions_total_amount, Float, nil?: true

                # @!attribute card_stopped_transactions_count
                #
                #   @return [Integer, nil]
                optional :card_stopped_transactions_count, Integer, nil?: true

                # @!attribute card_stopped_transactions_dates
                #
                #   @return [Array<Date>, nil]
                optional :card_stopped_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

                # @!attribute user_active_profile_count
                #
                #   @return [Integer, nil]
                optional :user_active_profile_count, Integer, nil?: true

                # @!attribute user_address_count
                #
                #   @return [Integer, nil]
                optional :user_address_count, Integer, nil?: true

                # @!attribute user_closed_profile_count
                #
                #   @return [Integer, nil]
                optional :user_closed_profile_count, Integer, nil?: true

                # @!attribute user_dob_count
                #
                #   @return [Integer, nil]
                optional :user_dob_count, Integer, nil?: true

                # @!attribute user_email_count
                #
                #   @return [Integer, nil]
                optional :user_email_count, Integer, nil?: true

                # @!attribute user_institution_count
                #
                #   @return [Integer, nil]
                optional :user_institution_count, Integer, nil?: true

                # @!attribute user_mobile_count
                #
                #   @return [Integer, nil]
                optional :user_mobile_count, Integer, nil?: true

                # @!method initialize(accounts_active_count: nil, accounts_closed_count: nil, accounts_closed_dates: nil, accounts_count: nil, accounts_fraud_count: nil, accounts_fraud_labeled_dates: nil, accounts_fraud_loss_total_amount: nil, ach_fraud_transactions_count: nil, ach_fraud_transactions_dates: nil, ach_fraud_transactions_total_amount: nil, ach_returned_transactions_count: nil, ach_returned_transactions_dates: nil, ach_returned_transactions_total_amount: nil, applications_approved_count: nil, applications_count: nil, applications_dates: nil, applications_declined_count: nil, applications_fraud_count: nil, card_disputed_transactions_count: nil, card_disputed_transactions_dates: nil, card_disputed_transactions_total_amount: nil, card_fraud_transactions_count: nil, card_fraud_transactions_dates: nil, card_fraud_transactions_total_amount: nil, card_stopped_transactions_count: nil, card_stopped_transactions_dates: nil, user_active_profile_count: nil, user_address_count: nil, user_closed_profile_count: nil, user_dob_count: nil, user_email_count: nil, user_institution_count: nil, user_mobile_count: nil)
                #   @param accounts_active_count [Integer, nil]
                #   @param accounts_closed_count [Integer, nil]
                #   @param accounts_closed_dates [Array<Date>, nil]
                #   @param accounts_count [Integer, nil]
                #   @param accounts_fraud_count [Integer, nil]
                #   @param accounts_fraud_labeled_dates [Array<Date>, nil]
                #   @param accounts_fraud_loss_total_amount [Float, nil]
                #   @param ach_fraud_transactions_count [Integer, nil]
                #   @param ach_fraud_transactions_dates [Array<Date>, nil]
                #   @param ach_fraud_transactions_total_amount [Float, nil]
                #   @param ach_returned_transactions_count [Integer, nil]
                #   @param ach_returned_transactions_dates [Array<Date>, nil]
                #   @param ach_returned_transactions_total_amount [Float, nil]
                #   @param applications_approved_count [Integer, nil]
                #   @param applications_count [Integer, nil]
                #   @param applications_dates [Array<Date>, nil]
                #   @param applications_declined_count [Integer, nil]
                #   @param applications_fraud_count [Integer, nil]
                #   @param card_disputed_transactions_count [Integer, nil]
                #   @param card_disputed_transactions_dates [Array<Date>, nil]
                #   @param card_disputed_transactions_total_amount [Float, nil]
                #   @param card_fraud_transactions_count [Integer, nil]
                #   @param card_fraud_transactions_dates [Array<Date>, nil]
                #   @param card_fraud_transactions_total_amount [Float, nil]
                #   @param card_stopped_transactions_count [Integer, nil]
                #   @param card_stopped_transactions_dates [Array<Date>, nil]
                #   @param user_active_profile_count [Integer, nil]
                #   @param user_address_count [Integer, nil]
                #   @param user_closed_profile_count [Integer, nil]
                #   @param user_dob_count [Integer, nil]
                #   @param user_email_count [Integer, nil]
                #   @param user_institution_count [Integer, nil]
                #   @param user_mobile_count [Integer, nil]
              end
            end

            # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails#watch_list
            class WatchList < Straddle::Internal::Type::BaseModel
              # @!attribute codes
              #   Specific codes related to the Straddle watchlist screening results.
              #
              #   @return [Array<String>, nil]
              optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute decision
              #
              #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision, nil]
              optional :decision,
                       enum: -> {
                         Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision
                       }

              # @!attribute matched
              #   Information about any matches found during screening.
              #
              #   @return [Array<String>, nil]
              optional :matched, Straddle::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute matches
              #   Information about any matches found during screening.
              #
              #   @return [Array<Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match>, nil]
              optional :matches,
                       -> {
                         Straddle::Internal::Type::ArrayOf[Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match]
                       },
                       nil?: true

              # @!method initialize(codes: nil, decision: nil, matched: nil, matches: nil)
              #   @param codes [Array<String>, nil] Specific codes related to the Straddle watchlist screening results.
              #
              #   @param decision [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Decision]
              #
              #   @param matched [Array<String>, nil] Information about any matches found during screening.
              #
              #   @param matches [Array<Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match>, nil] Information about any matches found during screening.

              # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList#decision
              module Decision
                extend Straddle::Internal::Type::Enum

                ACCEPT = :accept
                REJECT = :reject
                REVIEW = :review

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class Match < Straddle::Internal::Type::BaseModel
                # @!attribute correlation
                #
                #   @return [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation]
                required :correlation,
                         enum: -> {
                           Straddle::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation
                         }

                # @!attribute list_name
                #   The name of the list the match was found.
                #
                #   @return [String]
                required :list_name, String

                # @!attribute match_fields
                #   Data fields that matched.
                #
                #   @return [Array<String>]
                required :match_fields, Straddle::Internal::Type::ArrayOf[String]

                # @!attribute urls
                #   Relevent Urls to review.
                #
                #   @return [Array<String>]
                required :urls, Straddle::Internal::Type::ArrayOf[String]

                # @!method initialize(correlation:, list_name:, match_fields:, urls:)
                #   @param correlation [Symbol, Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match::Correlation]
                #
                #   @param list_name [String] The name of the list the match was found.
                #
                #   @param match_fields [Array<String>] Data fields that matched.
                #
                #   @param urls [Array<String>] Relevent Urls to review.

                # @see Straddle::Models::Customers::CustomerReviewV1::Data::IdentityDetails::WatchList::Match#correlation
                module Correlation
                  extend Straddle::Internal::Type::Enum

                  LOW_CONFIDENCE = :low_confidence
                  POTENTIAL_MATCH = :potential_match
                  LIKELY_MATCH = :likely_match
                  HIGH_CONFIDENCE = :high_confidence

                  # @!method self.values
                  #   @return [Array<Symbol>]
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
        #
        # @see Straddle::Models::Customers::CustomerReviewV1#response_type
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

    CustomerReviewV1 = Customers::CustomerReviewV1
  end
end
