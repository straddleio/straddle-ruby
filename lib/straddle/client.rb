# frozen_string_literal: true

module Straddle
  class Client < Straddle::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {sandbox: "https://sandbox.straddle.com", production: "https://production.straddle.com"}
    # rubocop:enable Style/MutableConstant

    # Use your Straddle API Key in the Authorization header as Bearer <token> to
    # authorize API requests.
    # @return [String]
    attr_reader :api_key

    # @return [Straddle::Resources::Embed]
    attr_reader :embed

    # Bridge provides a comprehensive suite of tools for connecting customer bank
    # accounts. Use it to generate secure widget sessions for instant account
    # verification, accept tokens from major providers like Plaid and Finicity, or
    # verify accounts directly via our API. Bridge handles all sensitive banking
    # credentials and ensures secure, compliant connections with support for 90% of US
    # bank accounts.
    # @return [Straddle::Resources::Bridge]
    attr_reader :bridge

    # Customers represent the end users who send or receive payments through your
    # integration. Each customer undergoes automatic identity verification and fraud
    # screening upon creation. Use customers to track payment history, manage bank
    # account connections, and maintain a secure record of all transactions associated
    # with a user. Customers can be either individuals or businesses with appropriate
    # compliance checks for each type.
    # @return [Straddle::Resources::Customers]
    attr_reader :customers

    # Paykeys are secure tokens that link verified customer identities to their bank
    # accounts. Each Paykey includes built-in balance checking, fraud detection
    # through LSTM machine learning models, and can be reused for subscriptions and
    # recurring payments without storing sensitive data. Paykeys eliminate fraud by
    # ensuring the person initiating payment owns the funding account.
    # @return [Straddle::Resources::Paykeys]
    attr_reader :paykeys

    # Charges represent attempts to debit money from a customer's bank account using a
    # Paykey. Each charge includes automatic balance verification, real-time fraud
    # screening, and multi-rail optimization and detailed status tracking throughout
    # the payment lifecycle. Use charges to accept bank payments with confidence
    # knowing every transaction is protected.
    # @return [Straddle::Resources::Charges]
    attr_reader :charges

    # Funding events represent all money movement between Straddle and an Account's
    # external bank accounts. They are automatically generated when charges settle or
    # payouts are initiated. Each event provides detailed tracking of settlement
    # status, fee breakdowns, and reconciliation data across both incoming and
    # outgoing transfers. Use funding events to monitor your platform's entire money
    # movement lifecycle.
    # @return [Straddle::Resources::FundingEvents]
    attr_reader :funding_events

    # Payments provide endpoints to filter both Charges and Payouts with multiple
    # different parameters.
    # @return [Straddle::Resources::Payments]
    attr_reader :payments

    # Payouts represent transfers from Straddle to customer bank accounts. Create
    # payouts to handle disbursements, process refunds, or manage marketplace
    # settlements. Use payouts to send money quickly and securely with the most
    # cost-effective rail automatically selected.
    # @return [Straddle::Resources::Payouts]
    attr_reader :payouts

    # @return [Straddle::Resources::Reports]
    attr_reader :reports

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Use your Straddle API Key in the Authorization header as Bearer <token> to
    # authorize API requests. Defaults to `ENV["STRADDLE_API_KEY"]`
    #
    # @param environment [:sandbox, :production, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `sandbox` corresponds to `https://sandbox.straddle.com`
    # - `production` corresponds to `https://production.straddle.com`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["STRADDLE_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["STRADDLE_API_KEY"],
      environment: nil,
      base_url: ENV["STRADDLE_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= Straddle::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{Straddle::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"STRADDLE_API_KEY\"")
      end

      headers = {}
      custom_headers_env = ENV["STRADDLE_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @embed = Straddle::Resources::Embed.new(client: self)
      @bridge = Straddle::Resources::Bridge.new(client: self)
      @customers = Straddle::Resources::Customers.new(client: self)
      @paykeys = Straddle::Resources::Paykeys.new(client: self)
      @charges = Straddle::Resources::Charges.new(client: self)
      @funding_events = Straddle::Resources::FundingEvents.new(client: self)
      @payments = Straddle::Resources::Payments.new(client: self)
      @payouts = Straddle::Resources::Payouts.new(client: self)
      @reports = Straddle::Resources::Reports.new(client: self)
    end
  end
end
