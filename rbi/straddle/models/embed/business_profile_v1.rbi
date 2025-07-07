# typed: strong

module Straddle
  module Models
    module Embed
      class BusinessProfileV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::BusinessProfileV1,
              Straddle::Internal::AnyHash
            )
          end

        # The operating or trade name of the business.
        sig { returns(String) }
        attr_accessor :name

        # URL of the business's primary marketing website.
        sig { returns(String) }
        attr_accessor :website

        # The address object is optional. If provided, it must be a valid address.
        sig { returns(T.nilable(Straddle::Embed::AddressV1)) }
        attr_reader :address

        sig do
          params(address: T.nilable(Straddle::Embed::AddressV1::OrHash)).void
        end
        attr_writer :address

        # A brief description of the business and its products or services.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(Straddle::Embed::IndustryV1)) }
        attr_reader :industry

        sig { params(industry: Straddle::Embed::IndustryV1::OrHash).void }
        attr_writer :industry

        # The official registered name of the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :legal_name

        # The primary contact phone number for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        sig { returns(T.nilable(Straddle::Embed::SupportChannelsV1)) }
        attr_reader :support_channels

        sig do
          params(
            support_channels: Straddle::Embed::SupportChannelsV1::OrHash
          ).void
        end
        attr_writer :support_channels

        # The business's tax identification number (e.g., EIN in the US).
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_id

        # A description of how the business intends to use Straddle's services.
        sig { returns(T.nilable(String)) }
        attr_accessor :use_case

        sig do
          params(
            name: String,
            website: String,
            address: T.nilable(Straddle::Embed::AddressV1::OrHash),
            description: T.nilable(String),
            industry: Straddle::Embed::IndustryV1::OrHash,
            legal_name: T.nilable(String),
            phone: T.nilable(String),
            support_channels: Straddle::Embed::SupportChannelsV1::OrHash,
            tax_id: T.nilable(String),
            use_case: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The operating or trade name of the business.
          name:,
          # URL of the business's primary marketing website.
          website:,
          # The address object is optional. If provided, it must be a valid address.
          address: nil,
          # A brief description of the business and its products or services.
          description: nil,
          industry: nil,
          # The official registered name of the business.
          legal_name: nil,
          # The primary contact phone number for the business.
          phone: nil,
          support_channels: nil,
          # The business's tax identification number (e.g., EIN in the US).
          tax_id: nil,
          # A description of how the business intends to use Straddle's services.
          use_case: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              website: String,
              address: T.nilable(Straddle::Embed::AddressV1),
              description: T.nilable(String),
              industry: Straddle::Embed::IndustryV1,
              legal_name: T.nilable(String),
              phone: T.nilable(String),
              support_channels: Straddle::Embed::SupportChannelsV1,
              tax_id: T.nilable(String),
              use_case: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
