# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      class LinkedBankAccounts
        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::LinkedBankAccountCreateParams} for more details.
        #
        # Creates a new linked bank account associated with a Straddle account. This
        # endpoint allows you to associate external bank accounts with a Straddle account
        # for various payment operations such as payment deposits, payout withdrawals, and
        # more.
        #
        # @overload create(account_id:, bank_account:, description: nil, metadata: nil, platform_id: nil, purposes: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String, nil] Body param: The unique identifier of the Straddle account to associate this bank
        #
        # @param bank_account [Straddle::Models::Embed::LinkedBankAccountCreateParams::BankAccount] Body param:
        #
        # @param description [String, nil] Body param: Optional description for the bank account.
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        #
        # @param platform_id [String, nil] Body param: The unique identifier of the Straddle Platform to associate this ban
        #
        # @param purposes [Array<Symbol, Straddle::Models::Embed::LinkedBankAccountCreateParams::Purpose>, nil] Body param: The purposes for the linked bank account.
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::LinkedBankAccountV1]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountCreateParams
        def create(params)
          parsed, options = Straddle::Embed::LinkedBankAccountCreateParams.dump_request(params)
          header_params = {correlation_id: "correlation-id", request_id: "request-id"}
          @client.request(
            method: :post,
            path: "v1/linked_bank_accounts",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::LinkedBankAccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::LinkedBankAccountUpdateParams} for more details.
        #
        # Updates an existing linked bank account's information. This can be used to
        # update account details during onboarding or to update metadata associated with
        # the linked account. The linked bank account must be in 'created' or 'onboarding'
        # status.
        #
        # @overload update(linked_bank_account_id, bank_account:, metadata: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param linked_bank_account_id [String] Path param:
        #
        # @param bank_account [Straddle::Models::Embed::LinkedBankAccountUpdateParams::BankAccount] Body param:
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::LinkedBankAccountV1]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountUpdateParams
        def update(linked_bank_account_id, params)
          parsed, options = Straddle::Embed::LinkedBankAccountUpdateParams.dump_request(params)
          header_params = {correlation_id: "correlation-id", request_id: "request-id"}
          @client.request(
            method: :put,
            path: ["v1/linked_bank_accounts/%1$s", linked_bank_account_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::Embed::LinkedBankAccountV1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Embed::LinkedBankAccountListParams} for more details.
        #
        # Returns a list of bank accounts associated with a specific Straddle account. The
        # linked bank accounts are returned sorted by creation date, with the most
        # recently created appearing first. This endpoint supports pagination to handle
        # accounts with multiple linked bank accounts.
        #
        # @overload list(account_id: nil, level: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param account_id [String] Query param: The unique identifier of the related account.
        #
        # @param level [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::Level] Query param:
        #
        # @param page_number [Integer] Query param: Results page number. Starts at page 1.
        #
        # @param page_size [Integer] Query param: Page size. Max value: 1000
        #
        # @param sort_by [String] Query param: Sort By.
        #
        # @param sort_order [Symbol, Straddle::Models::Embed::LinkedBankAccountListParams::SortOrder] Query param: Sort Order.
        #
        # @param correlation_id [String] Header param: Optional client generated identifier to trace and debug a series o
        #
        # @param request_id [String] Header param: Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Internal::PageNumberSchema<Straddle::Models::Embed::LinkedBankAccountPagedV1::Data>]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountListParams
        def list(params = {})
          parsed, options = Straddle::Embed::LinkedBankAccountListParams.dump_request(params)
          query_params = [:account_id, :level, :page_number, :page_size, :sort_by, :sort_order]
          @client.request(
            method: :get,
            path: "v1/linked_bank_accounts",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
            page: Straddle::Internal::PageNumberSchema,
            model: Straddle::Embed::LinkedBankAccountPagedV1::Data,
            options: options
          )
        end

        # Cancels an existing linked bank account. This can be used to cancel a linked
        # bank account before it has been reviewed. The linked bank account must be in
        # 'created' status.
        #
        # @overload cancel(linked_bank_account_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param linked_bank_account_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::LinkedBankAccountV1]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountCancelParams
        def cancel(linked_bank_account_id, params = {})
          parsed, options = Straddle::Embed::LinkedBankAccountCancelParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v1/linked_bank_accounts/%1$s/cancel", linked_bank_account_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::LinkedBankAccountV1,
            options: options
          )
        end

        # Retrieves the details of a linked bank account that has previously been created.
        # Supply the unique linked bank account `id`, and Straddle will return the
        # corresponding information. The response includes masked account details for
        # security purposes.
        #
        # @overload get(linked_bank_account_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param linked_bank_account_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::LinkedBankAccountV1]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountGetParams
        def get(linked_bank_account_id, params = {})
          parsed, options = Straddle::Embed::LinkedBankAccountGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/linked_bank_accounts/%1$s", linked_bank_account_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::LinkedBankAccountV1,
            options: options
          )
        end

        # Retrieves the unmasked details of a linked bank account that has previously been
        # created. Supply the unique linked bank account `id`, and Straddle will return
        # the corresponding information, including sensitive details. This endpoint needs
        # to be enabled by Straddle for your account and should only be used when
        # absolutely necessary.
        #
        # @overload unmask(linked_bank_account_id, correlation_id: nil, request_id: nil, request_options: {})
        #
        # @param linked_bank_account_id [String]
        #
        # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
        #
        # @param request_id [String] Optional client generated identifier to trace and debug a request.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Embed::LinkedBankAccountUnmaskV1]
        #
        # @see Straddle::Models::Embed::LinkedBankAccountUnmaskParams
        def unmask(linked_bank_account_id, params = {})
          parsed, options = Straddle::Embed::LinkedBankAccountUnmaskParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/linked_bank_accounts/%1$s/unmask", linked_bank_account_id],
            headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
            model: Straddle::Embed::LinkedBankAccountUnmaskV1,
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
