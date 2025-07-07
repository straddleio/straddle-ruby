# typed: strong

module Straddle
  module Resources
    class Embed
      class Organizations
        # Creates a new organization related to your Straddle integration. Organizations
        # can be used to group related accounts and manage permissions across multiple
        # users.
        sig do
          params(
            name: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::OrganizationV1)
        end
        def create(
          # Body param: The name of the organization.
          name:,
          # Body param: Unique identifier for the organization in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the organization in a structured format.
          metadata: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves a list of organizations associated with your Straddle integration. The
        # organizations are returned sorted by creation date, with the most recently
        # created organizations appearing first. This endpoint supports advanced sorting
        # and filtering options to help you find specific organizations.
        sig do
          params(
            external_id: String,
            name: String,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::Embed::OrganizationListParams::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(
            Straddle::Internal::PageNumberSchema[
              Straddle::Embed::OrganizationPagedV1::Data
            ]
          )
        end
        def list(
          # Query param: List organizations by their external ID.
          external_id: nil,
          # Query param: List organizations by name (partial match supported).
          name: nil,
          # Query param: Results page number. Starts at page 1.
          page_number: nil,
          # Query param: Page size. Max value: 1000
          page_size: nil,
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

        # Retrieves the details of an Organization that has previously been created.
        # Supply the unique organization ID that was returned from your previous request,
        # and Straddle will return the corresponding organization information.
        sig do
          params(
            organization_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::OrganizationV1)
        end
        def get(
          organization_id,
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
