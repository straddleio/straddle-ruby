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
    ENVIRONMENTS = {production: "https://production.straddle.io", sandbox: "https://sandbox.straddle.io"}
    # rubocop:enable Style/MutableConstant

    # Use your Straddle API Key in the Authorization header as Bearer <token> to
    # authorize API requests.
    # @return [String]
    attr_reader :api_key

    # @return [Straddle::Resources::Embed]
    attr_reader :embed

    # @return [Straddle::Resources::Bridge]
    attr_reader :bridge

    # @return [Straddle::Resources::Customers]
    attr_reader :customers

    # @return [Straddle::Resources::Paykeys]
    attr_reader :paykeys

    # @return [Straddle::Resources::Charges]
    attr_reader :charges

    # @return [Straddle::Resources::FundingEvents]
    attr_reader :funding_events

    # @return [Straddle::Resources::Payments]
    attr_reader :payments

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
    # @param environment [:production, :sandbox, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://production.straddle.io`
    # - `sandbox` corresponds to `https://sandbox.straddle.io`
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

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
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
