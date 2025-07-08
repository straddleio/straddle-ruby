# typed: strong

module Straddle
  module Models
    module Embed
      class SupportChannelsV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::SupportChannelsV1,
              Straddle::Internal::AnyHash
            )
          end

        # The email address for customer support inquiries.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The phone number for customer support.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The URL of the business's customer support page or contact form.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig do
          params(
            email: T.nilable(String),
            phone: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The email address for customer support inquiries.
          email: nil,
          # The phone number for customer support.
          phone: nil,
          # The URL of the business's customer support page or contact form.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              email: T.nilable(String),
              phone: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
