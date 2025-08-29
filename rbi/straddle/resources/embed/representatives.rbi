# typed: strong

module Straddle
  module Resources
    class Embed
      class Representatives
        # Creates a new representative associated with an account. Representatives are
        # individuals who have legal authority or significant responsibility within the
        # business.
        sig do
          params(
            account_id: String,
            dob: Date,
            email: String,
            first_name: String,
            last_name: String,
            mobile_number: String,
            relationship:
              Straddle::Embed::RepresentativeCreateParams::Relationship::OrHash,
            ssn_last4: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::Representative)
        end
        def create(
          # Body param: The unique identifier of the account this representative is
          # associated with.
          account_id:,
          # Body param: Date of birth for the representative in ISO 8601 format
          # (YYYY-MM-DD).
          dob:,
          # Body param: The company email address of the representative.
          email:,
          # Body param: The first name of the representative.
          first_name:,
          # Body param: The last name of the representative.
          last_name:,
          # Body param: The mobile phone number of the representative.
          mobile_number:,
          # Body param:
          relationship:,
          # Body param: The last 4 digits of the representative's Social Security Number.
          ssn_last4:,
          # Body param: Unique identifier for the representative in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the represetative in a structured format.
          metadata: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated value to use for idempotent requests.
          idempotency_key: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Updates an existing representative's information. This can be used to update
        # personal details, contact information, or the relationship to the account or
        # organization.
        sig do
          params(
            representative_id: String,
            dob: Date,
            email: String,
            first_name: String,
            last_name: String,
            mobile_number: String,
            relationship:
              Straddle::Embed::RepresentativeUpdateParams::Relationship::OrHash,
            ssn_last4: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::Representative)
        end
        def update(
          # Path param:
          representative_id,
          # Body param: The date of birth of the representative, in ISO 8601 format
          # (YYYY-MM-DD).
          dob:,
          # Body param: The email address of the representative.
          email:,
          # Body param: The first name of the representative.
          first_name:,
          # Body param: The last name of the representative.
          last_name:,
          # Body param: The mobile phone number of the representative.
          mobile_number:,
          # Body param:
          relationship:,
          # Body param: The last 4 digits of the representative's Social Security Number.
          ssn_last4:,
          # Body param: Unique identifier for the representative in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the represetative in a structured format.
          metadata: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated value to use for idempotent requests.
          idempotency_key: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Returns a list of representatives associated with a specific account or
        # organization. The representatives are returned sorted by creation date, with the
        # most recently created representatives appearing first. This endpoint supports
        # advanced sorting and filtering options.
        sig do
          params(
            account_id: String,
            level: Straddle::Embed::RepresentativeListParams::Level::OrSymbol,
            organization_id: String,
            page_number: Integer,
            page_size: Integer,
            platform_id: String,
            sort_by: String,
            sort_order:
              Straddle::Embed::RepresentativeListParams::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(
            Straddle::Internal::PageNumberSchema[
              Straddle::Embed::RepresentativePaged::Data
            ]
          )
        end
        def list(
          # Query param: The unique identifier of the account to list representatives for.
          account_id: nil,
          # Query param:
          level: nil,
          # Query param:
          organization_id: nil,
          # Query param: Results page number. Starts at page 1.
          page_number: nil,
          # Query param: Page size. Max value: 1000
          page_size: nil,
          # Query param:
          platform_id: nil,
          # Query param: Sort By.
          sort_by: nil,
          # Query param: Sort Order.
          sort_order: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves the details of an existing representative. Supply the unique
        # representative ID, and Straddle will return the corresponding representative
        # information.
        sig do
          params(
            representative_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::Representative)
        end
        def get(
          representative_id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves the unmasked details of a representative that has previously been
        # created. Supply the unique representative ID, and Straddle will return the
        # corresponding representative information, including sensitive details. This
        # endpoint requires additional authentication and should be used with caution.
        sig do
          params(
            representative_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::Representative)
        end
        def unmask(
          representative_id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Straddle::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
