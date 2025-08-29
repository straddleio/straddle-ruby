# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      class Organizations
        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::OrganizationCreateParams} for more details.
        #
        # Creates a new organization related to your Straddle integration. Organizations
        # can be used to group related accounts and manage permissions across multiple
        # users.
        #
        # @overload create(name:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param name [String] Body param: The name of the organization.
        #
        # @param external_id [String, nil] Body param: Unique identifier for the organization in your database, used for cr
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::OrganizationV1]
        #
        # @see Straddle::Models::Embed::OrganizationCreateParams
        def create(params)
          parsed, options = Straddle::Embed::OrganizationCreateParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :post,
            path: "v1/organizations",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::OrganizationV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::OrganizationListParams} for more details.
        #
        # Retrieves a list of organizations associated with your Straddle integration. The
        # organizations are returned sorted by creation date, with the most recently
        # created organizations appearing first. This endpoint supports advanced sorting
        # and filtering options to help you find specific organizations.
        #
        # @overload list(external_id: nil, name: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param external_id [String] Query param: List organizations by their external ID.
        #
        # @param name [String] Query param: List organizations by name (partial match supported).
        #
        # @param page_number [Integer] Query param: Results page number. Starts at page 1.
        #
        # @param page_size [Integer] Query param: Page size. Max value: 1000
        #
        # @param sort_by [String] Query param: Sort By.
        #
        # @param sort_order [Symbol, Straddle::Models::Embed::OrganizationListParams::SortOrder] Query param: Sort Order.
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::Embed::OrganizationPagedV1::Data>]
        #
        # @see Straddle::Models::Embed::OrganizationListParams
        def list(params = {})
          parsed, options = Straddle::Embed::OrganizationListParams.dump_request(params)
          query_params = [:external_id, :name, :page_number, :page_size, :sort_by, :sort_order]
          @client.request(
            method: :get,
            path: "v1/organizations",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
            page: Straddle::Internal::PageNumberSchema,
            model: Straddle::Embed::OrganizationPagedV1::Data,
            options: options
          )
        end

        # Retrieves the details of an Organization that has previously been created.
        # Supply the unique organization ID that was returned from your previous request,
        # and Straddle will return the corresponding organization information.
        #
        # @overload get(organization_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param organization_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::OrganizationV1]
        #
        # @see Straddle::Models::Embed::OrganizationGetParams
        def get(organization_id, params = {})
          parsed, options = Straddle::Embed::OrganizationGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/organizations/%1$s", organization_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::OrganizationV1,
            options: options
          )
        end

        # @api private
        #
        # @param client [Straddle::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
