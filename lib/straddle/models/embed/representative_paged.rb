# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      class RepresentativePaged < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Straddle::Models::Embed::RepresentativePaged::Data>]
        required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::Embed::RepresentativePaged::Data] }

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
        #   @return [Symbol, Straddle::Models::Embed::RepresentativePaged::ResponseType]
        required :response_type, enum: -> { Straddle::Embed::RepresentativePaged::ResponseType }

        # @!method initialize(data:, meta:, response_type:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::RepresentativePaged} for more details.
        #
        #   @param data [Array<Straddle::Models::Embed::RepresentativePaged::Data>]
        #
        #   @param meta [Straddle::Models::PagedResponseMetadata] Metadata about the API request, including an identifier, timestamp, and paginati
        #
        #   @param response_type [Symbol, Straddle::Models::Embed::RepresentativePaged::ResponseType] Indicates the structure of the returned content.

        class Data < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the representative.
          #
          #   @return [String]
          required :id, String

          # @!attribute account_id
          #   The unique identifier of the account this representative is associated with.
          #
          #   @return [String]
          required :account_id, String

          # @!attribute created_at
          #   Timestamp of when the representative was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute dob
          #   The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
          #
          #   @return [Date]
          required :dob, Date

          # @!attribute email
          #   The email address of the representative.
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute first_name
          #   The first name of the representative.
          #
          #   @return [String]
          required :first_name, String

          # @!attribute last_name
          #   The last name of the representative.
          #
          #   @return [String]
          required :last_name, String

          # @!attribute mobile_number
          #   The mobile phone number of the representative.
          #
          #   @return [String]
          required :mobile_number, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute relationship
          #
          #   @return [Straddle::Models::Embed::RepresentativePaged::Data::Relationship]
          required :relationship, -> { Straddle::Embed::RepresentativePaged::Data::Relationship }

          # @!attribute ssn_last4
          #   The last 4 digits of the representative's Social Security Number.
          #
          #   @return [String]
          required :ssn_last4, String

          # @!attribute status
          #   The current status of the representative.
          #
          #   @return [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::Status]
          required :status, enum: -> { Straddle::Embed::RepresentativePaged::Data::Status }

          # @!attribute status_detail
          #
          #   @return [Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail]
          required :status_detail, -> { Straddle::Embed::RepresentativePaged::Data::StatusDetail }

          # @!attribute updated_at
          #   Timestamp of the most recent update to the representative.
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute external_id
          #   Unique identifier for the representative in your database, used for
          #   cross-referencing between Straddle and your systems.
          #
          #   @return [String, nil]
          optional :external_id, String, nil?: true

          # @!attribute phone
          #
          #   @return [String, nil]
          optional :phone, String, nil?: true

          # @!attribute user_id
          #   The unique identifier of the user account associated with this representative,
          #   if applicable.
          #
          #   @return [String, nil]
          optional :user_id, String, nil?: true

          # @!method initialize(id:, account_id:, created_at:, dob:, email:, first_name:, last_name:, mobile_number:, name:, relationship:, ssn_last4:, status:, status_detail:, updated_at:, external_id: nil, phone: nil, user_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::Embed::RepresentativePaged::Data} for more details.
          #
          #   @param id [String] Unique identifier for the representative.
          #
          #   @param account_id [String] The unique identifier of the account this representative is associated with.
          #
          #   @param created_at [Time] Timestamp of when the representative was created.
          #
          #   @param dob [Date] The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
          #
          #   @param email [String, nil] The email address of the representative.
          #
          #   @param first_name [String] The first name of the representative.
          #
          #   @param last_name [String] The last name of the representative.
          #
          #   @param mobile_number [String] The mobile phone number of the representative.
          #
          #   @param name [String]
          #
          #   @param relationship [Straddle::Models::Embed::RepresentativePaged::Data::Relationship]
          #
          #   @param ssn_last4 [String] The last 4 digits of the representative's Social Security Number.
          #
          #   @param status [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::Status] The current status of the representative.
          #
          #   @param status_detail [Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail]
          #
          #   @param updated_at [Time] Timestamp of the most recent update to the representative.
          #
          #   @param external_id [String, nil] Unique identifier for the representative in your database, used for cross-refere
          #
          #   @param phone [String, nil]
          #
          #   @param user_id [String, nil] The unique identifier of the user account associated with this representative, i

          # @see Straddle::Models::Embed::RepresentativePaged::Data#relationship
          class Relationship < Straddle::Internal::Type::BaseModel
            # @!attribute control
            #   Whether the representative has significant responsibility to control, manage, or
            #   direct the organization. One representative must be identified under the control
            #   prong for each legal entity.
            #
            #   @return [Boolean]
            required :control, Straddle::Internal::Type::Boolean

            # @!attribute owner
            #   Whether the representative owns any percentage of of the equity interests of the
            #   legal entity.
            #
            #   @return [Boolean]
            required :owner, Straddle::Internal::Type::Boolean

            # @!attribute primary
            #   Whether the person is authorized as the primary representative of the account.
            #   This is the person chosen by the business to provide information about
            #   themselves, general information about the account, and who consented to the
            #   services agreement.
            #
            #   There can be only one primary representative for an account at a time.
            #
            #   @return [Boolean]
            required :primary, Straddle::Internal::Type::Boolean

            # @!attribute percent_ownership
            #   The percentage of ownership the representative has. Required if 'Owner' is true.
            #
            #   @return [Float, nil]
            optional :percent_ownership, Float, nil?: true

            # @!attribute title
            #   The job title of the representative.
            #
            #   @return [String, nil]
            optional :title, String, nil?: true

            # @!method initialize(control:, owner:, primary:, percent_ownership: nil, title: nil)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::RepresentativePaged::Data::Relationship} for more
            #   details.
            #
            #   @param control [Boolean] Whether the representative has significant responsibility to control, manage, or
            #
            #   @param owner [Boolean] Whether the representative owns any percentage of of the equity interests of the
            #
            #   @param primary [Boolean] Whether the person is authorized as the primary representative of the account. T
            #
            #   @param percent_ownership [Float, nil] The percentage of ownership the representative has. Required if 'Owner' is true.
            #
            #   @param title [String, nil] The job title of the representative.
          end

          # The current status of the representative.
          #
          # @see Straddle::Models::Embed::RepresentativePaged::Data#status
          module Status
            extend Straddle::Internal::Type::Enum

            CREATED = :created
            ONBOARDING = :onboarding
            ACTIVE = :active
            REJECTED = :rejected
            INACTIVE = :inactive

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::Embed::RepresentativePaged::Data#status_detail
          class StatusDetail < Straddle::Internal::Type::BaseModel
            # @!attribute code
            #   A machine-readable code for the specific status, useful for programmatic
            #   handling.
            #
            #   @return [String]
            required :code, String

            # @!attribute message
            #   A human-readable message describing the current status.
            #
            #   @return [String]
            required :message, String

            # @!attribute reason
            #   A machine-readable identifier for the specific status, useful for programmatic
            #   handling.
            #
            #   @return [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail::Reason]
            required :reason, enum: -> { Straddle::Embed::RepresentativePaged::Data::StatusDetail::Reason }

            # @!attribute source
            #   Identifies the origin of the status change (e.g., `watchtower`). This helps in
            #   tracking the cause of status updates.
            #
            #   @return [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail::Source]
            required :source, enum: -> { Straddle::Embed::RepresentativePaged::Data::StatusDetail::Source }

            # @!method initialize(code:, message:, reason:, source:)
            #   Some parameter documentations has been truncated, see
            #   {Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail} for more
            #   details.
            #
            #   @param code [String] A machine-readable code for the specific status, useful for programmatic handlin
            #
            #   @param message [String] A human-readable message describing the current status.
            #
            #   @param reason [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail::Reason] A machine-readable identifier for the specific status, useful for programmatic h
            #
            #   @param source [Symbol, Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail::Source] Identifies the origin of the status change (e.g., `watchtower`). This helps in t

            # A machine-readable identifier for the specific status, useful for programmatic
            # handling.
            #
            # @see Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail#reason
            module Reason
              extend Straddle::Internal::Type::Enum

              UNVERIFIED = :unverified
              IN_REVIEW = :in_review
              PENDING = :pending
              STUCK = :stuck
              VERIFIED = :verified
              FAILED_VERIFICATION = :failed_verification
              DISABLED = :disabled
              NEW = :new

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Identifies the origin of the status change (e.g., `watchtower`). This helps in
            # tracking the cause of status updates.
            #
            # @see Straddle::Models::Embed::RepresentativePaged::Data::StatusDetail#source
            module Source
              extend Straddle::Internal::Type::Enum

              WATCHTOWER = :watchtower

              # @!method self.values
              #   @return [Array<Symbol>]
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
        # @see Straddle::Models::Embed::RepresentativePaged#response_type
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
