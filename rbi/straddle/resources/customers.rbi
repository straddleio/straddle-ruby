# typed: strong

module Straddle
  module Resources
    class Customers
      sig { returns(Straddle::Resources::Customers::Review) }
      attr_reader :review

      # Creates a new customer record and automatically initiates identity, fraud, and
      # risk assessment scores. This endpoint allows you to create a customer profile
      # and associate it with paykeys and payments.
      sig do
        params(
          device: Straddle::DeviceUnmaskedV1::OrHash,
          email: String,
          name: String,
          phone: String,
          type: Straddle::CustomerCreateParams::Type::OrSymbol,
          address: T.nilable(Straddle::CustomerAddressV1::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::CustomerCreateParams::ComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::CustomerCreateParams::ComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          config: Straddle::CustomerCreateParams::Config::OrHash,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerV1)
      end
      def create(
        # Body param:
        device:,
        # Body param: The customer's email address.
        email:,
        # Body param: Full name of the individual or business name.
        name:,
        # Body param: The customer's phone number in E.164 format. Mobile number is
        # preferred.
        phone:,
        # Body param:
        type:,
        # Body param: An object containing the customer's address. **This is optional.**
        # If used, all required fields must be present.
        address: nil,
        # Body param: An object containing the customer's compliance profile. **This is
        # optional.** If all required fields must be present for the appropriate customer
        # type.
        compliance_profile: nil,
        # Body param:
        config: nil,
        # Body param: Unique identifier for the customer in your database, used for
        # cross-referencing between Straddle and your systems.
        external_id: nil,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the customer in a structured format.
        metadata: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated value to use for idempotent requests.
        idempotency_key: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Updates an existing customer's information. This endpoint allows you to modify
      # the customer's contact details, PII, and metadata.
      sig do
        params(
          id: String,
          device: Straddle::DeviceUnmaskedV1::OrHash,
          email: String,
          name: String,
          phone: String,
          status: Straddle::CustomerUpdateParams::Status::OrSymbol,
          address: T.nilable(Straddle::CustomerAddressV1::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::CustomerUpdateParams::ComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::CustomerUpdateParams::ComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerV1)
      end
      def update(
        # Path param:
        id,
        # Body param:
        device:,
        # Body param: The customer's email address.
        email:,
        # Body param: The customer's full name or business name.
        name:,
        # Body param: The customer's phone number in E.164 format.
        phone:,
        # Body param:
        status:,
        # Body param: An object containing the customer's address. This is optional, but
        # if provided, all required fields must be present.
        address: nil,
        # Body param: Individual PII data required to trigger Patriot Act compliant KYC
        # verification.
        compliance_profile: nil,
        # Body param: Unique identifier for the customer in your database, used for
        # cross-referencing between Straddle and your systems.
        external_id: nil,
        # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
        # additional information about the customer in a structured format.
        metadata: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated value to use for idempotent requests.
        idempotency_key: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an account id and set scope of a
        # request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Lists or searches customers connected to your account. All supported query
      # parameters are optional. If none are provided, the response will include all
      # customers connected to your account. This endpoint supports advanced sorting and
      # filtering options.
      sig do
        params(
          created_from: Time,
          created_to: Time,
          email: String,
          external_id: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: Straddle::CustomerListParams::SortBy::OrSymbol,
          sort_order: Straddle::CustomerListParams::SortOrder::OrSymbol,
          status: T::Array[Straddle::CustomerListParams::Status::OrSymbol],
          types: T::Array[Straddle::CustomerListParams::Type::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(
          Straddle::Internal::PageNumberSchema[
            Straddle::CustomerSummaryPagedV1::Data
          ]
        )
      end
      def list(
        # Query param: Start date for filtering by `created_at` date.
        created_from: nil,
        # Query param: End date for filtering by `created_at` date.
        created_to: nil,
        # Query param: Filter customers by `email` address.
        email: nil,
        # Query param: Filter by your system's `external_id`.
        external_id: nil,
        # Query param: Filter customers by `name` (partial match).
        name: nil,
        # Query param: Page number for paginated results. Starts at 1.
        page_number: nil,
        # Query param: Number of results per page. Maximum: 1000.
        page_size: nil,
        # Query param: General search term to filter customers.
        search_text: nil,
        # Query param:
        sort_by: nil,
        # Query param:
        sort_order: nil,
        # Query param: Filter customers by their current `status`.
        status: nil,
        # Query param: Filter by customer type `individual` or `business`.
        types: nil,
        # Header param: Optional client generated identifier to trace and debug a series
        # of requests.
        correlation_id: nil,
        # Header param: Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # Header param: For use by platforms to specify an `account_id` to set the scope
        # of a request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Permanently removes a customer record from Straddle. This action cannot be
      # undone and should only be used to satisfy regulatory requirements or for privacy
      # compliance.
      sig do
        params(
          id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerV1)
      end
      def delete(
        id,
        # Optional client generated identifier to trace and debug a series of requests.
        correlation_id: nil,
        # Optional client generated value to use for idempotent requests.
        idempotency_key: nil,
        # Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # For use by platforms to specify an account id and set scope of a request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing customer. Supply the unique customer ID
      # that was returned from your 'create customer' request, and Straddle will return
      # the corresponding customer information.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerV1)
      end
      def get(
        id,
        # Optional client generated identifier to trace and debug a series of requests.
        correlation_id: nil,
        # Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # For use by platforms to specify an account id and set scope of a request.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Retrieves the unmasked details, including PII, of an existing customer. Supply
      # the unique customer ID that was returned from your 'create customer' request,
      # and Straddle will return the corresponding customer information. This endpoint
      # needs to be enabled by Straddle and should only be used when absolutely
      # necessary.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerUnmaskedV1)
      end
      def unmasked(
        id,
        # Optional client generated identifier to trace and debug a series of requests.
        correlation_id: nil,
        # Optional client generated identifier to trace and debug a request.
        request_id: nil,
        # For use by platforms to specify an account id and set scope of a request.
        straddle_account_id: nil,
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
