# typed: strong

module Straddle
  module Resources
    class Embed
      class LinkedBankAccounts
        # Creates a new linked bank account associated with a Straddle account. This
        # endpoint allows you to associate external bank accounts with a Straddle account
        # for various payment operations such as payment deposits, payout withdrawals, and
        # more.
        sig do
          params(
            account_id: T.nilable(String),
            bank_account:
              Straddle::Embed::LinkedBankAccountCreateParams::BankAccount::OrHash,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            platform_id: T.nilable(String),
            purposes:
              T.nilable(
                T::Array[
                  Straddle::Embed::LinkedBankAccountCreateParams::Purpose::OrSymbol
                ]
              ),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::LinkedBankAccountV1)
        end
        def create(
          # Body param: The unique identifier of the Straddle account to associate this bank
          # account with.
          account_id:,
          # Body param:
          bank_account:,
          # Body param: Optional description for the bank account.
          description: nil,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the linked bank account in a structured format.
          metadata: nil,
          # Body param: The unique identifier of the Straddle Platform to associate this
          # bank account with.
          platform_id: nil,
          # Body param: The purposes for the linked bank account.
          purposes: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Updates an existing linked bank account's information. This can be used to
        # update account details during onboarding or to update metadata associated with
        # the linked account. The linked bank account must be in 'created' or 'onboarding'
        # status.
        sig do
          params(
            linked_bank_account_id: String,
            bank_account:
              Straddle::Embed::LinkedBankAccountUpdateParams::BankAccount::OrHash,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::LinkedBankAccountV1)
        end
        def update(
          # Path param:
          linked_bank_account_id,
          # Body param:
          bank_account:,
          # Body param: Up to 20 additional user-defined key-value pairs. Useful for storing
          # additional information about the linked bank account in a structured format.
          metadata: nil,
          # Header param: Optional client generated identifier to trace and debug a series
          # of requests.
          correlation_id: nil,
          # Header param: Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Returns a list of bank accounts associated with a specific Straddle account. The
        # linked bank accounts are returned sorted by creation date, with the most
        # recently created appearing first. This endpoint supports pagination to handle
        # accounts with multiple linked bank accounts.
        sig do
          params(
            account_id: String,
            level:
              Straddle::Embed::LinkedBankAccountListParams::Level::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(
            Straddle::Internal::PageNumberSchema[
              Straddle::Embed::LinkedBankAccountPagedV1::Data
            ]
          )
        end
        def list(
          # Query param: The unique identifier of the related account.
          account_id: nil,
          # Query param:
          level: nil,
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

        # Cancels an existing linked bank account. This can be used to cancel a linked
        # bank account before it has been reviewed. The linked bank account must be in
        # 'created' status.
        sig do
          params(
            linked_bank_account_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::LinkedBankAccountV1)
        end
        def cancel(
          linked_bank_account_id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves the details of a linked bank account that has previously been created.
        # Supply the unique linked bank account `id`, and Straddle will return the
        # corresponding information. The response includes masked account details for
        # security purposes.
        sig do
          params(
            linked_bank_account_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::LinkedBankAccountV1)
        end
        def get(
          linked_bank_account_id,
          # Optional client generated identifier to trace and debug a series of requests.
          correlation_id: nil,
          # Optional client generated identifier to trace and debug a request.
          request_id: nil,
          request_options: {}
        )
        end

        # Retrieves the unmasked details of a linked bank account that has previously been
        # created. Supply the unique linked bank account `id`, and Straddle will return
        # the corresponding information, including sensitive details. This endpoint needs
        # to be enabled by Straddle for your account and should only be used when
        # absolutely necessary.
        sig do
          params(
            linked_bank_account_id: String,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Embed::LinkedBankAccountUnmaskV1)
        end
        def unmask(
          linked_bank_account_id,
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
