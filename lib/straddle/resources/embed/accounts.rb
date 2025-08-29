# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      class Accounts
        # @return [Straddle::Resources::Embed::Accounts::CapabilityRequests]
        attr_reader :capability_requests

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::AccountCreateParams} for more details.
        #
        # Creates a new account associated with your Straddle platform integration. This
        # endpoint allows you to set up an account with specified details, including
        # business information and access levels.
        #
        # @overload create(access_level:, account_type:, business_profile:, organization_id:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param access_level [Symbol, Straddle::Models::Embed::AccountCreateParams::AccessLevel] Body param: The access level granted to the account. This is determined by your
        #
        # @param account_type [Symbol, Straddle::Models::Embed::AccountCreateParams::AccountType] Body param: The type of account to be created. Currently, only `business` is sup
        #
        # @param business_profile [Straddle::Models::Embed::BusinessProfileV1] Body param:
        #
        # @param organization_id [String] Body param: The unique identifier of the organization related to this account.
        #
        # @param external_id [String, nil] Body param: Unique identifier for the account in your database, used for cross-r
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
        # @return [Straddle::Models::Embed::AccountV1]
        #
        # @see Straddle::Models::Embed::AccountCreateParams
        def create(params)
          parsed, options = Straddle::Embed::AccountCreateParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :post,
            path: "v1/accounts",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::AccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::AccountUpdateParams} for more details.
        #
        # Updates an existing account's information. This endpoint allows you to update
        # various account details during onboarding or after the account has been created.
        #
        # @overload update(account_id, business_profile:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Path param:
        #
        # @param business_profile [Straddle::Models::Embed::BusinessProfileV1] Body param:
        #
        # @param external_id [String, nil] Body param: Unique identifier for the account in your database, used for cross-r
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
        # @return [Straddle::Models::Embed::AccountV1]
        #
        # @see Straddle::Models::Embed::AccountUpdateParams
        def update(account_id, params)
          parsed, options = Straddle::Embed::AccountUpdateParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :put,
            path: ["v1/accounts/%1$s", account_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::AccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::AccountListParams} for more details.
        #
        # Returns a list of accounts associated with your Straddle platform integration.
        # The accounts are returned sorted by creation date, with the most recently
        # created accounts appearing first. This endpoint supports advanced sorting and
        # filtering options.
        #
        # @overload list(page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param page_number [Integer] Query param: Results page number. Starts at page 1. Default value: 1
        #
        # @param page_size [Integer] Query param: Page size. Default value: 100. Max value: 1000
        #
        # @param search_text [String] Query param:
        #
        # @param sort_by [String] Query param: Sort By. Default value: 'id'.
        #
        # @param sort_order [Symbol, Straddle::Models::Embed::AccountListParams::SortOrder] Query param: Sort Order. Default value: 'asc'.
        #
        # @param status [Symbol, Straddle::Models::Embed::AccountListParams::Status] Query param:
        #
        # @param type [Symbol, Straddle::Models::Embed::AccountListParams::Type] Query param:
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::Embed::AccountPagedV1::Data>]
        #
        # @see Straddle::Models::Embed::AccountListParams
        def list(params = {})
          parsed, options = Straddle::Embed::AccountListParams.dump_request(params)
          query_params = [:page_number, :page_size, :search_text, :sort_by, :sort_order, :status, :type]
          @client.request(
            method: :get,
            path: "v1/accounts",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
            page: Straddle::Internal::PageNumberSchema,
            model: Straddle::Embed::AccountPagedV1::Data,
            options: options
          )
        end

        # Retrieves the details of an account that has previously been created. Supply the
        # unique account ID that was returned from your previous request, and Straddle
        # will return the corresponding account information.
        #
        # @overload get(account_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] The unique identifier of the account to retrieve.
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::AccountV1]
        #
        # @see Straddle::Models::Embed::AccountGetParams
        def get(account_id, params = {})
          parsed, options = Straddle::Embed::AccountGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/accounts/%1$s", account_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::AccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::AccountOnboardParams} for more details.
        #
        # Initiates the onboarding process for a new account. This endpoint can only be
        # used for accounts where at least one representative and one bank account have
        # already been created.
        #
        # @overload onboard(account_id, terms_of_service:, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Path param:
        #
        # @param terms_of_service [Straddle::Models::Embed::TermsOfServiceV1] Body param:
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::AccountV1]
        #
        # @see Straddle::Models::Embed::AccountOnboardParams
        def onboard(account_id, params)
          parsed, options = Straddle::Embed::AccountOnboardParams.dump_request(params)
          header_params =
            {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
          @client.request(
            method: :post,
            path: ["v1/accounts/%1$s/onboard", account_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::AccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::AccountSimulateParams} for more details.
        #
        # Simulate the status transitions for sandbox accounts. This endpoint can only be
        # used for sandbox accounts.
        #
        # @overload simulate(account_id, final_status: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Path param:
        #
        # @param final_status [Symbol, Straddle::Models::Embed::AccountSimulateParams::FinalStatus] Query param:
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::AccountV1]
        #
        # @see Straddle::Models::Embed::AccountSimulateParams
        def simulate(account_id, params = {})
          parsed, options = Straddle::Embed::AccountSimulateParams.dump_request(params)
          query_params = [:final_status]
          @client.request(
            method: :post,
            path: ["v1/accounts/%1$s/simulate", account_id],
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id"
            ),
            model: Straddle::Embed::AccountV1,
            options: options
          )
        end

        # @api private
        #
        # @param client [Straddle::Client]
        def initialize(client:)
          @client = client
          @capability_requests = Straddle::Resources::Embed::Accounts::CapabilityRequests.new(client: client)
        end
      end
    end
  end
end
