# frozen_string_literal: true

module Straddle
  module Resources
    class Customers
      # @return [Straddle::Resources::Customers::Review]
      attr_reader :review

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerCreateParams} for more details.
      #
      # Creates a new customer record and automatically initiates identity, fraud, and
      # risk assessment scores. This endpoint allows you to create a customer profile
      # and associate it with paykeys and payments.
      #
      # @overload create(device:, email:, name:, phone:, type:, address: nil, compliance_profile: nil, config: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param device [Straddle::Models::DeviceUnmaskedV1] Body param:
      #
      # @param email [String] Body param: The customer's email address.
      #
      # @param name [String] Body param: Full name of the individual or business name.
      #
      # @param phone [String] Body param: The customer's phone number in E.164 format. Mobile number is prefer
      #
      # @param type [Symbol, Straddle::Models::CustomerCreateParams::Type] Body param:
      #
      # @param address [Straddle::Models::CustomerAddressV1, nil] Body param: An object containing the customer's address. **This is optional.** I
      #
      # @param compliance_profile [Straddle::Models::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile, nil] Body param: An object containing the customer's compliance profile. \*\*This is
      # op
      #
      # @param config [Straddle::Models::CustomerCreateParams::Config] Body param:
      #
      # @param external_id [String, nil] Body param: Unique identifier for the customer in your database, used for cross-
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerV1]
      #
      # @see Straddle::Models::CustomerCreateParams
      def create(params)
        parsed, options = Straddle::CustomerCreateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :post,
          path: "v1/customers",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::CustomerV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerUpdateParams} for more details.
      #
      # Updates an existing customer's information. This endpoint allows you to modify
      # the customer's contact details, PII, and metadata.
      #
      # @overload update(id, device:, email:, name:, phone:, status:, address: nil, compliance_profile: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param:
      #
      # @param device [Straddle::Models::DeviceUnmaskedV1] Body param:
      #
      # @param email [String] Body param: The customer's email address.
      #
      # @param name [String] Body param: The customer's full name or business name.
      #
      # @param phone [String] Body param: The customer's phone number in E.164 format.
      #
      # @param status [Symbol, Straddle::Models::CustomerUpdateParams::Status] Body param:
      #
      # @param address [Straddle::Models::CustomerAddressV1, nil] Body param: An object containing the customer's address. This is optional, but i
      #
      # @param compliance_profile [Straddle::Models::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile, nil] Body param: Individual PII data required to trigger Patriot Act compliant KYC ve
      #
      # @param external_id [String, nil] Body param: Unique identifier for the customer in your database, used for cross-
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an account id and set scope of a r
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerV1]
      #
      # @see Straddle::Models::CustomerUpdateParams
      def update(id, params)
        parsed, options = Straddle::CustomerUpdateParams.dump_request(params)
        header_params =
          {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
        @client.request(
          method: :put,
          path: ["v1/customers/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::CustomerV1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerListParams} for more details.
      #
      # Lists or searches customers connected to your account. All supported query
      # parameters are optional. If none are provided, the response will include all
      # customers connected to your account. This endpoint supports advanced sorting and
      # filtering options.
      #
      # @overload list(created_from: nil, created_to: nil, email: nil, external_id: nil, name: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, types: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param created_from [Time] Query param: Start date for filtering by `created_at` date.
      #
      # @param created_to [Time] Query param: End date for filtering by `created_at` date.
      #
      # @param email [String] Query param: Filter customers by `email` address.
      #
      # @param external_id [String] Query param: Filter by your system's `external_id`.
      #
      # @param name [String] Query param: Filter customers by `name` (partial match).
      #
      # @param page_number [Integer] Query param: Page number for paginated results. Starts at 1.
      #
      # @param page_size [Integer] Query param: Number of results per page. Maximum: 1000.
      #
      # @param search_text [String] Query param: General search term to filter customers.
      #
      # @param sort_by [Symbol, Straddle::Models::CustomerListParams::SortBy] Query param:
      #
      # @param sort_order [Symbol, Straddle::Models::CustomerListParams::SortOrder] Query param:
      #
      # @param status [Array<Symbol, Straddle::Models::CustomerListParams::Status>] Query param: Filter customers by their current `status`.
      #
      # @param types [Array<Symbol, Straddle::Models::CustomerListParams::Type>] Query param: Filter by customer type `individual` or `business`.
      #
      # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
      #
      # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] Header param: For use by platforms to specify an `account_id` to set the scope o
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::CustomerSummaryPagedV1::Data>]
      #
      # @see Straddle::Models::CustomerListParams
      def list(params = {})
        parsed, options = Straddle::CustomerListParams.dump_request(params)
        query_params =
          [
            :created_from,
            :created_to,
            :email,
            :external_id,
            :name,
            :page_number,
            :page_size,
            :search_text,
            :sort_by,
            :sort_order,
            :status,
            :types
          ]
        @client.request(
          method: :get,
          path: "v1/customers",
          query: parsed.slice(*query_params),
          headers: parsed.except(*query_params).transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          page: Straddle::Internal::PageNumberSchema,
          model: Straddle::CustomerSummaryPagedV1::Data,
          options: options
        )
      end

      # Permanently removes a customer record from Straddle. This action cannot be
      # undone and should only be used to satisfy regulatory requirements or for privacy
      # compliance.
      #
      # @overload delete(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param idempotency_key [String] Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerV1]
      #
      # @see Straddle::Models::CustomerDeleteParams
      def delete(id, params = {})
        parsed, options = Straddle::CustomerDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/customers/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::CustomerV1,
          options: options
        )
      end

      # Retrieves the details of an existing customer. Supply the unique customer ID
      # that was returned from your 'create customer' request, and Straddle will return
      # the corresponding customer information.
      #
      # @overload get(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerV1]
      #
      # @see Straddle::Models::CustomerGetParams
      def get(id, params = {})
        parsed, options = Straddle::CustomerGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/customers/%1$s", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::CustomerV1,
          options: options
        )
      end

      # Updates the decision of a customer's identity validation. This endpoint allows
      # you to modify the outcome of a customer decision and is useful for correcting or
      # updating the status of a customer's verification.
      #
      # @overload refresh_review(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param idempotency_key [String] Optional client generated value to use for idempotent requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerV1]
      #
      # @see Straddle::Models::CustomerRefreshReviewParams
      def refresh_review(id, params = {})
        parsed, options = Straddle::CustomerRefreshReviewParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/customers/%1$s/refresh_review", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::CustomerV1,
          options: options
        )
      end

      # Retrieves the unmasked details, including PII, of an existing customer. Supply
      # the unique customer ID that was returned from your 'create customer' request,
      # and Straddle will return the corresponding customer information. This endpoint
      # needs to be enabled by Straddle and should only be used when absolutely
      # necessary.
      #
      # @overload unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerUnmaskedV1]
      #
      # @see Straddle::Models::CustomerUnmaskedParams
      def unmasked(id, params = {})
        parsed, options = Straddle::CustomerUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/customers/%1$s/unmasked", id],
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::CustomerUnmaskedV1,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
        @review = Straddle::Resources::Customers::Review.new(client: client)
      end
    end
  end
end
