# typed: strong

module Straddle
  module Resources
    class Embed
      # Accounts represent businesses using Straddle through your platform. Each account
      # must complete automated verification before processing payments. Use accounts to
      # manage your users' payment capabilities, track verification status, and control
      # access to features. Accounts can be instantly created in sandbox and require
      # additional verification for production access.
      sig { returns(Straddle::Resources::Embed::Accounts) }
      attr_reader :accounts

      # Linked bank accounts connect your platform users' external bank accounts to
      # Straddle for settlements and payment funding. Each linked account undergoes
      # automated verification and continuous monitoring. Use linked accounts to manage
      # where clients receive deposits, fund payouts, and track settlement preferences.
      sig { returns(Straddle::Resources::Embed::LinkedBankAccounts) }
      attr_reader :linked_bank_accounts

      # Organizations are a powerful feature in Straddle that allow you to manage
      # multiple accounts under a single umbrella. This hierarchical structure is
      # particularly useful for businesses with complex operations, multiple
      # departments, or legally related entities.
      sig { returns(Straddle::Resources::Embed::Organizations) }
      attr_reader :organizations

      # Representatives are individuals who have legal authority or significant
      # responsibility within a business entity associated with a Straddle account. Each
      # representative undergoes automated verification as part of KYC/KYB compliance.
      # Use representatives to collect and verify beneficial owners, control persons,
      # and authorized signers required for account onboarding. Representatives also
      # determine who can legally operate the account and make important changes.
      sig { returns(Straddle::Resources::Embed::Representatives) }
      attr_reader :representatives

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
