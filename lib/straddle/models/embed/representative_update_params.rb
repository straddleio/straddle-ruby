# frozen_string_literal: true

module Straddle
  module Models
    module Embed
      # @see Straddle::Resources::Embed::Representatives#update
      class RepresentativeUpdateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute dob
        #   The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
        #
        #   @return [Date]
        required :dob, Date

        # @!attribute email
        #   The email address of the representative.
        #
        #   @return [String]
        required :email, String

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

        # @!attribute relationship
        #
        #   @return [Straddle::Models::Embed::RepresentativeUpdateParams::Relationship]
        required :relationship, -> { Straddle::Embed::RepresentativeUpdateParams::Relationship }

        # @!attribute ssn_last4
        #   The last 4 digits of the representative's Social Security Number.
        #
        #   @return [String]
        required :ssn_last4, String

        # @!attribute external_id
        #   Unique identifier for the representative in your database, used for
        #   cross-referencing between Straddle and your systems.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute correlation_id
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!attribute request_id
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, correlation_id: nil, request_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Embed::RepresentativeUpdateParams} for more details.
        #
        #   @param dob [Date] The date of birth of the representative, in ISO 8601 format (YYYY-MM-DD).
        #
        #   @param email [String] The email address of the representative.
        #
        #   @param first_name [String] The first name of the representative.
        #
        #   @param last_name [String] The last name of the representative.
        #
        #   @param mobile_number [String] The mobile phone number of the representative.
        #
        #   @param relationship [Straddle::Models::Embed::RepresentativeUpdateParams::Relationship]
        #
        #   @param ssn_last4 [String] The last 4 digits of the representative's Social Security Number.
        #
        #   @param external_id [String, nil] Unique identifier for the representative in your database, used for cross-refere
        #
        #   @param correlation_id [String]
        #
        #   @param request_id [String]
        #
        #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

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
          #   {Straddle::Models::Embed::RepresentativeUpdateParams::Relationship} for more
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
      end
    end
  end
end
