# typed: strong

module Straddle
  module Resources
    class Embed
      sig { returns(Straddle::Resources::Embed::Accounts) }
      attr_reader :accounts

      sig { returns(Straddle::Resources::Embed::LinkedBankAccounts) }
      attr_reader :linked_bank_accounts

      sig { returns(Straddle::Resources::Embed::Organizations) }
      attr_reader :organizations

      sig { returns(Straddle::Resources::Embed::Representatives) }
      attr_reader :representatives

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
