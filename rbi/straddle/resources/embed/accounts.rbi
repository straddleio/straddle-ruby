# typed: strong

module Straddle
  module Resources
    class Embed
      class Accounts
        sig do
          returns(Straddle::Resources::Embed::Accounts::CapabilityRequests)
        end
        attr_reader :capability_requests

        # Creates a new account associated with your Straddle platform integration. This
        # endpoint allows you to set up an account with specified details, including
        # business information and access levels.
        sig do
          params(
            access_level:
              Straddle::Embed::AccountCreateParams::AccessLevel::OrSymbol,
            account_type:
              Straddle::Embed::AccountCreateParams::AccountType::OrSymbol,
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash,
            organization_id: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::AccountV1)
        end
        def create(
          # Body param: The access level granted to the account. This is determined by your
          # platform configuration. Use `standard` unless instructed otherwise by Straddle.
          access_level:,
          # Body param: The type of account to be created. Currently, only `business` is
          # supported.
          account_type:,
          # Body param:
          business_profile:,
          # Body param: The unique identifier of the organization related to this account.
          organization_id:,
          # Body param: Unique identifier for the account in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the account in a structured format.
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

        # Updates an existing account's information. This endpoint allows you to update
        # various account details during onboarding or after the account has been created.
        sig do
          params(
            account_id: String,
            business_profile: Straddle::Embed::BusinessProfileV1::OrHash,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::AccountV1)
        end
        def update(
          # Path param:
          account_id,
          # Body param:
          business_profile:,
          # Body param: Unique identifier for the account in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the account in a structured format.
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

        # Returns a list of accounts associated with your Straddle platform integration.
        # The accounts are returned sorted by creation date, with the most recently
        # created accounts appearing first. This endpoint supports advanced sorting and
        # filtering options.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            search_text: String,
            sort_by: String,
            sort_order: Straddle::Embed::AccountListParams::SortOrder::OrSymbol,
            status: Straddle::Embed::AccountListParams::Status::OrSymbol,
            type: Straddle::Embed::AccountListParams::Type::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(
            Straddle::Internal::PageNumberSchema[
              Straddle::Embed::AccountPagedV1::Data
            ]
          )
        end
        def list(
          # Query param: Results page number. Starts at page 1. Default value: 1
          page_number: nil,
          # Query param: Page size. Default value: 100. Max value: 1000
          page_size: nil,
          # Query param:
          search_text: nil,
          # Query param: Sort By. Default value: 'id'.
          sort_by: nil,
          # Query param: Sort Order. Default value: 'asc'.
          sort_order: nil,
          # Query param:
          status: nil,
          # Query param:
          type: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves the details of an account that has previously been created. Supply the
        # unique account ID that was returned from your previous request, and Straddle
        # will return the corresponding account information.
        sig do
          params(
            account_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::AccountV1)
        end
        def get(
          # The unique identifier of the account to retrieve.
          account_id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Initiates the onboarding process for a new account. This endpoint can only be
        # used for accounts where at least one representative and one bank account have
        # already been created.
        sig do
          params(
            account_id: String,
            terms_of_service: Straddle::Embed::TermsOfServiceV1::OrHash,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::AccountV1)
        end
        def onboard(
          # Path param:
          account_id,
          # Body param:
          terms_of_service:,
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

        # Simulate the status transitions for sandbox accounts. This endpoint can only be
        # used for sandbox accounts.
        sig do
          params(
            account_id: String,
            final_status:
              Straddle::Embed::AccountSimulateParams::FinalStatus::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::AccountV1)
        end
        def simulate(
          # Path param:
          account_id,
          # Query param:
          final_status: nil,
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

        # @api private
        sig { params(client: Straddle::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
