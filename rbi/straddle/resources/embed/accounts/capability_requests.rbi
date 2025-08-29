# typed: strong

module Straddle
  module Resources
    class Embed
      class Accounts
        class CapabilityRequests
          # Submits a request to enable a specific capability for an account. Use this
          # endpoint to request additional features or services for an account.
          sig do
            params(
              account_id: String,
              businesses:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Businesses::OrHash,
              charges:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Charges::OrHash,
              individuals:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Individuals::OrHash,
              internet:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Internet::OrHash,
              payouts:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::Payouts::OrHash,
              signed_agreement:
                Straddle::Embed::Accounts::CapabilityRequestCreateParams::SignedAgreement::OrHash,
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              request_options: Straddle::RequestOptions::OrHash
            ).returns(Straddle::Embed::Accounts::CapabilityRequestPagedV1)
          end
          def create(
            # Path param:
            account_id,
            # Body param: Allows the account to accept payments from businesses.
            businesses: nil,
            # Body param: The charges capability settings for the account.
            charges: nil,
            # Body param: Allows the account to accept payments from individuals.
            individuals: nil,
            # Body param: Allows the account to accept payments authorized via the internet or
            # mobile applications.
            internet: nil,
            # Body param: The payouts capability settings for the account.
            payouts: nil,
            # Body param: Allows the account to accept payments authorized by signed
            # agreements or contracts.
            signed_agreement: nil,
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

          # Retrieves a list of capability requests associated with an account. The requests
          # are returned sorted by creation date, with the most recent requests appearing
          # first. This endpoint supports advanced sorting and filtering options.
          sig do
            params(
              account_id: String,
              category:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Category::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::Embed::Accounts::CapabilityRequestListParams::SortOrder::OrSymbol,
              status:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Status::OrSymbol,
              type:
                Straddle::Embed::Accounts::CapabilityRequestListParams::Type::OrSymbol,
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions::OrHash
            ).returns(
              Straddle::Internal::PageNumberSchema[
                Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data
              ]
            )
          end
          def list(
            # Path param:
            account_id,
            # Query param: Filter capability requests by category.
            category: nil,
            # Query param: Results page number. Starts at page 1.
            page_number: nil,
            # Query param: Page size.Max value: 1000
            page_size: nil,
            # Query param: Sort By.
            sort_by: nil,
            # Query param: Sort Order.
            sort_order: nil,
            # Query param: Filter capability requests by their current status.
            status: nil,
            # Query param: Filter capability requests by the specific type of capability.
            type: nil,
            # Header param: Optional client generated identifier to trace and debug a series
            # of requests.
            correlation_id: nil,
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
end
