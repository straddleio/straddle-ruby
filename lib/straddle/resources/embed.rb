# frozen_string_literal: true

module Straddle
  module Resources
    class Embed
      # @return [Straddle::Resources::Embed::Accounts]
      attr_reader :accounts

      # @return [Straddle::Resources::Embed::LinkedBankAccounts]
      attr_reader :linked_bank_accounts

      # @return [Straddle::Resources::Embed::Organizations]
      attr_reader :organizations

      # @return [Straddle::Resources::Embed::Representatives]
      attr_reader :representatives

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
        @accounts = Straddle::Resources::Embed::Accounts.new(client: client)
        @linked_bank_accounts = Straddle::Resources::Embed::LinkedBankAccounts.new(client: client)
        @organizations = Straddle::Resources::Embed::Organizations.new(client: client)
        @representatives = Straddle::Resources::Embed::Representatives.new(client: client)
      end
    end
  end
end
