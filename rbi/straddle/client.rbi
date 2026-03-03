# typed: strong

module Straddle
  class Client < Straddle::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          sandbox: "https://sandbox.straddle.com",
          production: "https://production.straddle.com"
        },
        T::Hash[Symbol, String]
      )

    # Use your Straddle API Key in the Authorization header as Bearer <token> to
    # authorize API requests.
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Straddle::Resources::Embed) }
    attr_reader :embed

    # Bridge provides a comprehensive suite of tools for connecting customer bank
    # accounts. Use it to generate secure widget sessions for instant account
    # verification, accept tokens from major providers like Plaid and Finicity, or
    # verify accounts directly via our API. Bridge handles all sensitive banking
    # credentials and ensures secure, compliant connections with support for 90% of US
    # bank accounts.
    sig { returns(Straddle::Resources::Bridge) }
    attr_reader :bridge

    # Customers represent the end users who send or receive payments through your
    # integration. Each customer undergoes automatic identity verification and fraud
    # screening upon creation. Use customers to track payment history, manage bank
    # account connections, and maintain a secure record of all transactions associated
    # with a user. Customers can be either individuals or businesses with appropriate
    # compliance checks for each type.
    sig { returns(Straddle::Resources::Customers) }
    attr_reader :customers

    # Paykeys are secure tokens that link verified customer identities to their bank
    # accounts. Each Paykey includes built-in balance checking, fraud detection
    # through LSTM machine learning models, and can be reused for subscriptions and
    # recurring payments without storing sensitive data. Paykeys eliminate fraud by
    # ensuring the person initiating payment owns the funding account.
    sig { returns(Straddle::Resources::Paykeys) }
    attr_reader :paykeys

    # Charges represent attempts to debit money from a customer's bank account using a
    # Paykey. Each charge includes automatic balance verification, real-time fraud
    # screening, and multi-rail optimization and detailed status tracking throughout
    # the payment lifecycle. Use charges to accept bank payments with confidence
    # knowing every transaction is protected.
    sig { returns(Straddle::Resources::Charges) }
    attr_reader :charges

    # Funding events represent all money movement between Straddle and an Account's
    # external bank accounts. They are automatically generated when charges settle or
    # payouts are initiated. Each event provides detailed tracking of settlement
    # status, fee breakdowns, and reconciliation data across both incoming and
    # outgoing transfers. Use funding events to monitor your platform's entire money
    # movement lifecycle.
    sig { returns(Straddle::Resources::FundingEvents) }
    attr_reader :funding_events

    # Payments provide endpoints to filter both Charges and Payouts with multiple
    # different parameters.
    sig { returns(Straddle::Resources::Payments) }
    attr_reader :payments

    # Payouts represent transfers from Straddle to customer bank accounts. Create
    # payouts to handle disbursements, process refunds, or manage marketplace
    # settlements. Use payouts to send money quickly and securely with the most
    # cost-effective rail automatically selected.
    sig { returns(Straddle::Resources::Payouts) }
    attr_reader :payouts

    sig { returns(Straddle::Resources::Reports) }
    attr_reader :reports

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Use your Straddle API Key in the Authorization header as Bearer <token> to
      # authorize API requests. Defaults to `ENV["STRADDLE_API_KEY"]`
      api_key: ENV["STRADDLE_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `sandbox` corresponds to `https://sandbox.straddle.com`
      # - `production` corresponds to `https://production.straddle.com`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["STRADDLE_BASE_URL"]`
      base_url: ENV["STRADDLE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Straddle::Client::DEFAULT_MAX_RETRIES,
      timeout: Straddle::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Straddle::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Straddle::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
