# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      class Representatives
        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::RepresentativeCreateParams} for more details.
        #
        # Creates a new representative associated with an account. Representatives are
        # individuals who have legal authority or significant responsibility within the
        # business.
        #
        # @overload create(account_id:, dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Body param: The unique identifier of the account this representative is associat
        #
        # @param dob [Date] Body param: Date of birth for the representative in ISO 8601 format (YYYY-MM-DD)
        #
        # @param email [String] Body param: The company email address of the representative.
        #
        # @param first_name [String] Body param: The first name of the representative.
        #
        # @param last_name [String] Body param: The last name of the representative.
        #
        # @param mobile_number [String] Body param: The mobile phone number of the representative.
        #
        # @param relationship [Straddle::Models::Embed::RepresentativeCreateParams::Relationship] Body param:
        #
        # @param ssn_last4 [String] Body param: The last 4 digits of the representative's Social Security Number.
        #
        # @param external_id [String, nil] Body param: Unique identifier for the representative in your database, used for
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::Representative]
        #
        # @see Straddle::Models::Embed::RepresentativeCreateParams
        def create(params)
          parsed, options = Straddle::Embed::RepresentativeCreateParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :post,
            path: "v1/representatives",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::Representative,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::RepresentativeUpdateParams} for more details.
        #
        # Updates an existing representative's information. This can be used to update
        # personal details, contact information, or the relationship to the account or
        # organization.
        #
        # @overload update(representative_id, dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param representative_id [String] Path param:
        #
        # @param dob [Date] Body param: The date of birth of the representative, in ISO 8601 format (YYYY-MM
        #
        # @param email [String] Body param: The email address of the representative.
        #
        # @param first_name [String] Body param: The first name of the representative.
        #
        # @param last_name [String] Body param: The last name of the representative.
        #
        # @param mobile_number [String] Body param: The mobile phone number of the representative.
        #
        # @param relationship [Straddle::Models::Embed::RepresentativeUpdateParams::Relationship] Body param:
        #
        # @param ssn_last4 [String] Body param: The last 4 digits of the representative's Social Security Number.
        #
        # @param external_id [String, nil] Body param: Unique identifier for the representative in your database, used for
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::Representative]
        #
        # @see Straddle::Models::Embed::RepresentativeUpdateParams
        def update(representative_id, params)
          parsed, options = Straddle::Embed::RepresentativeUpdateParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :put,
            path: ["v1/representatives/%1$s", representative_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::Representative,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::RepresentativeListParams} for more details.
        #
        # Returns a list of representatives associated with a specific account or
        # organization. The representatives are returned sorted by creation date, with the
        # most recently created representatives appearing first. This endpoint supports
        # advanced sorting and filtering options.
        #
        # @overload list(account_id: nil, level: nil, organization_id: nil, page_number: nil, page_size: nil, platform_id: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Query param: The unique identifier of the account to list representatives for.
        #
        # @param level [Symbol, Straddle::Models::Embed::RepresentativeListParams::Level] Query param:
        #
        # @param organization_id [String] Query param:
        #
        # @param page_number [Integer] Query param: Results page number. Starts at page 1.
        #
        # @param page_size [Integer] Query param: Page size. Max value: 1000
        #
        # @param platform_id [String] Query param:
        #
        # @param sort_by [String] Query param: Sort By.
        #
        # @param sort_order [Symbol, Straddle::Models::Embed::RepresentativeListParams::SortOrder] Query param: Sort Order.
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::Embed::RepresentativePaged::Data>]
        #
        # @see Straddle::Models::Embed::RepresentativeListParams
        def list(params = {})
          parsed, options = Straddle::Embed::RepresentativeListParams.dump_request(params)
          query_params =
            [
              :account_id,
              :level,
              :organization_id,
              :page_number,
              :page_size,
              :platform_id,
              :sort_by,
              :sort_order
            ]
          @client.request(
            method: :get,
            path: "v1/representatives",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
            page: Straddle::Internal::PageNumberSchema,
            model: Straddle::Embed::RepresentativePaged::Data,
            options: options
          )
        end

        # Retrieves the details of an existing representative. Supply the unique
        # representative ID, and Straddle will return the corresponding representative
        # information.
        #
        # @overload get(representative_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param representative_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::Representative]
        #
        # @see Straddle::Models::Embed::RepresentativeGetParams
        def get(representative_id, params = {})
          parsed, options = Straddle::Embed::RepresentativeGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/representatives/%1$s", representative_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::Representative,
            options: options
          )
        end

        # Retrieves the unmasked details of a representative that has previously been
        # created. Supply the unique representative ID, and Straddle will return the
        # corresponding representative information, including sensitive details. This
        # endpoint requires additional authentication and should be used with caution.
        #
        # @overload unmask(representative_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param representative_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::Representative]
        #
        # @see Straddle::Models::Embed::RepresentativeUnmaskParams
        def unmask(representative_id, params = {})
          parsed, options = Straddle::Embed::RepresentativeUnmaskParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/representatives/%1$s/unmask", representative_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::Representative,
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
