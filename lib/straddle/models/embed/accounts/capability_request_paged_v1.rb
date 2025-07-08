# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      module Accounts
        # @see Straddle::Resources::Embed::Accounts::CapabilityRequests#create
        class CapabilityRequestPagedV1 < Straddle::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data>]
          required :data,
                   -> {
                     Straddle::Internal::Type::ArrayOf[Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data]
                   }

          # @!attribute meta
          #   Metadata about the API request, including an identifier, timestamp, and
          #   pagination details.
          #
          #   @return [Straddle::Models::PagedResponseMetadata]
          required :meta, -> { Straddle::PagedResponseMetadata }

          # @!attribute response_type
          #   Indicates the structure of the returned content.
          #
          #   - "object" means the `data` field contains a single JSON object.
          #   - "array" means the `data` field contains an array of objects.
          #   - "error" means the `data` field contains an error object with details of the
          #     issue.
          #   - "none" means no data is returned.
          #
          #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::ResponseType]
          required :response_type,
                   enum: -> {
                     Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType
                   }

          # @!method initialize(data:, meta:, response_type:)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1} for more details.
          #
          #   @param data [Array<Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data>]
          #
          #   @param meta [Straddle::Models::PagedResponseMetadata] Metadata about the API request, including an identifier, timestamp, and paginati
          #
          #   @param response_type [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::ResponseType] Indicates the structure of the returned content.

          class Data < Straddle::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the capability request.
            #
            #   @return [String]
            required :id, String

            # @!attribute account_id
            #   The unique identifier of the account associated with this capability request.
            #
            #   @return [String]
            required :account_id, String

            # @!attribute category
            #   The category of the requested capability. Use `payment_type` for charges and
            #   payouts, `customer_type` to define `individuals` or `businesses`, and
            #   `consent_type` for `signed_agreement` or `internet` payment authorization.
            #
            #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Category]
            required :category,
                     enum: -> {
                       Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category
                     }

            # @!attribute created_at
            #   Timestamp of when the capability request was created.
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute status
            #   The current status of the capability request.
            #
            #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Status]
            required :status, enum: -> { Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status }

            # @!attribute type
            #   The specific type of capability being requested within the category.
            #
            #   @return [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Type]
            required :type, enum: -> { Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type }

            # @!attribute updated_at
            #   Timestamp of the most recent update to the capability request.
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute settings
            #   Any specific settings or configurations related to the requested capability.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :settings,
                     Straddle::Internal::Type::HashOf[Straddle::Internal::Type::Unknown],
                     nil?: true

            # @!method initialize(id:, account_id:, category:, created_at:, status:, type:, updated_at:, settings: nil)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data} for more
            #   details.
            #
            #   @param id [String] Unique identifier for the capability request.
            #
            #   @param account_id [String] The unique identifier of the account associated with this capability request.
            #
            #   @param category [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Category] The category of the requested capability. Use `payment_type` for charges and pay
            #
            #   @param created_at [Time] Timestamp of when the capability request was created.
            #
            #   @param status [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Status] The current status of the capability request.
            #
            #   @param type [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data::Type] The specific type of capability being requested within the category.
            #
            #   @param updated_at [Time] Timestamp of the most recent update to the capability request.
            #
            #   @param settings [Hash{Symbol=>Object}, nil] Any specific settings or configurations related to the requested capability.

            # The category of the requested capability. Use `payment_type` for charges and
            # payouts, `customer_type` to define `individuals` or `businesses`, and
            # `consent_type` for `signed_agreement` or `internet` payment authorization.
            #
            # @see Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data#category
            module Category
              extend Straddle::Internal::Type::Enum

              PAYMENT_TYPE = :payment_type
              CUSTOMER_TYPE = :customer_type
              CONSENT_TYPE = :consent_type

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The current status of the capability request.
            #
            # @see Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data#status
            module Status
              extend Straddle::Internal::Type::Enum

              ACTIVE = :active
              INACTIVE = :inactive
              IN_REVIEW = :in_review
              REJECTED = :rejected
              APPROVED = :approved
              REVIEWING = :reviewing

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The specific type of capability being requested within the category.
            #
            # @see Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data#type
            module Type
              extend Straddle::Internal::Type::Enum

              CHARGES = :charges
              PAYOUTS = :payouts
              INDIVIDUALS = :individuals
              BUSINESSES = :businesses
              SIGNED_AGREEMENT = :signed_agreement
              INTERNET = :internet

              # @!method self.values
              #   @return [Array<Symbol>]
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
          # @see Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1#response_type
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
  end
end
