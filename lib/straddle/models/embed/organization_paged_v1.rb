# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class OrganizationPagedV1 < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Straddle::Models::Embed::OrganizationPagedV1::Data>]
        required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::Embed::OrganizationPagedV1::Data] }

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
        #   @return [Symbol, Straddle::Models::Embed::OrganizationPagedV1::ResponseType]
        required :response_type, enum: -> { Straddle::Embed::OrganizationPagedV1::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::OrganizationPagedV1} for more details.
        #
        #   @param data [Array<Straddle::Models::Embed::OrganizationPagedV1::Data>]
        #
        #   @param meta [Straddle::Models::PagedResponseMetadata] Metadata about the API request, including an identifier, timestamp, and paginati
        #
        #   @param response_type [Symbol, Straddle::Models::Embed::OrganizationPagedV1::ResponseType] Indicates the structure of the returned content.

        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Straddle's unique identifier for the organization.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   Timestamp of when the organization was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute name
          #   The name of the organization.
          #
          #   @return [String]
          required :name, String

          # @!attribute updated_at
          #   Timestamp of the most recent update to the organization.
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute external_id
          #   Unique identifier for the organization in your database, used for
          #   cross-referencing between Straddle and your systems.
          #
          #   @return [String, nil]
          optional :external_id, String, nil?: true

          # @!attribute metadata
          #   Up to 20 additional user-defined key-value pairs. Useful for storing additional
          #   information about the organization in a structured format.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(id:, created_at:, name:, updated_at:, external_id: nil, metadata: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::OrganizationPagedV1::Data} for more details.
          #
          #   @param id [String] Straddle's unique identifier for the organization.
          #
          #   @param created_at [Time] Timestamp of when the organization was created.
          #
          #   @param name [String] The name of the organization.
          #
          #   @param updated_at [Time] Timestamp of the most recent update to the organization.
          #
          #   @param external_id [String, nil] Unique identifier for the organization in your database, used for cross-referenc
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 additional user-defined key-value pairs. Useful for storing additional
        end

        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        #
        # @see Straddle::Models::Embed::OrganizationPagedV1#response_type
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
