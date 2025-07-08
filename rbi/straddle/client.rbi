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
          sandbox: "https://sandbox.straddle.io",
          production: "https://production.straddle.io"
        },
        T::Hash[Symbol, String]
      )

    # Use your Straddle API Key in the Authorization header as Bearer <token> to
    # authorize API requests.
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Straddle::Resources::Embed) }
    attr_reader :embed

    sig { returns(Straddle::Resources::Bridge) }
    attr_reader :bridge

    sig { returns(Straddle::Resources::Customers) }
    attr_reader :customers

    sig { returns(Straddle::Resources::Paykeys) }
    attr_reader :paykeys

    sig { returns(Straddle::Resources::Charges) }
    attr_reader :charges

    sig { returns(Straddle::Resources::FundingEvents) }
    attr_reader :funding_events

    sig { returns(Straddle::Resources::Payments) }
    attr_reader :payments

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
      # - `sandbox` corresponds to `https://sandbox.straddle.io`
      # - `production` corresponds to `https://production.straddle.io`
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
