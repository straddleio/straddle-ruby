# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      class Accounts
        class CapabilityRequests
          # Some parameter documentations has been truncated, see
          # {Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams} for more
          # details.
          #
          # Submits a request to enable a specific capability for an account. Use this
          # endpoint to request additional features or services for an account.
          #
          # @overload create(account_id, businesses: nil, charges: nil, individuals: nil, internet: nil, payouts: nil, signed_agreement: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
          #
          # @param account_id [String] Path param:
          #
          # @param businesses [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Businesses] Body param: Allows the account to accept payments from businesses.
          #
          # @param charges [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Charges] Body param: The charges capability settings for the account.
          #
          # @param individuals [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Individuals] Body param: Allows the account to accept payments from individuals.
          #
          # @param internet [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Internet] Body param: Allows the account to accept payments authorized via the internet or
          #
          # @param payouts [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::Payouts] Body param: The payouts capability settings for the account.
          #
          # @param signed_agreement [Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement] Body param: Allows the account to accept payments authorized by signed agreement
          #
          # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
          #
          # @param idempotency_key [String] Header param: Optional client generated value to use for idempotent requests.
          #
          # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
          #
          # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1]
          #
          # @see Straddle::Models::Embed::Accounts::CapabilityRequestCreateParams
          def create(account_id, params = {})
            parsed, options = Straddle::Embed::Accounts::CapabilityRequestCreateParams.dump_request(params)
            header_params =
              {correlation_id: "correlation-id", idempotency_key: "idempotency-key", request_id: "request-id"}
            @client.request(
              method: :post,
              path: ["v1/accounts/%1$s/capability_requests", account_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Straddle::Embed::Accounts::CapabilityRequestPagedV1,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Straddle::Models::Embed::Accounts::CapabilityRequestListParams} for more
          # details.
          #
          # Retrieves a list of capability requests associated with an account. The requests
          # are returned sorted by creation date, with the most recent requests appearing
          # first. This endpoint supports advanced sorting and filtering options.
          #
          # @overload list(account_id, category: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
          #
          # @param account_id [String] Path param:
          #
          # @param category [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Category] Query param: Filter capability requests by category.
          #
          # @param page_number [Integer] Query param: Results page number. Starts at page 1.
          #
          # @param page_size [Integer] Query param: Page size.Max value: 1000
          #
          # @param sort_by [String] Query param: Sort By.
          #
          # @param sort_order [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::SortOrder] Query param: Sort Order.
          #
          # @param status [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Status] Query param: Filter capability requests by their current status.
          #
          # @param type [Symbol, Straddle::Models::Embed::Accounts::CapabilityRequestListParams::Type] Query param: Filter capability requests by the specific type of capability.
          #
          # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
          #
          # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
          #
          # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::Embed::Accounts::CapabilityRequestPagedV1::Data>]
          #
          # @see Straddle::Models::Embed::Accounts::CapabilityRequestListParams
          def list(account_id, params = {})
            parsed, options = Straddle::Embed::Accounts::CapabilityRequestListParams.dump_request(params)
            query_params = [:category, :page_number, :page_size, :sort_by, :sort_order, :status, :type]
            @client.request(
              method: :get,
              path: ["v1/accounts/%1$s/capability_requests", account_id],
              query: parsed.slice(*query_params),
              headers: parsed.except(*query_params).transform_keys(
                correlation_id: "correlation-id",
                request_id: "request-id"
              ),
              page: Straddle::Internal::PageNumberSchema,
              model: Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data,
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
end
