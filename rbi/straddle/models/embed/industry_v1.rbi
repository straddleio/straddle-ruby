# typed: strong

module Straddle
  module Models
    module Embed
      class IndustryV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::IndustryV1, Straddle::Internal::AnyHash)
          end

        # The general category of the industry. Required if not providing MCC.
        sig { returns(T.nilable(String)) }
        attr_accessor :category

        # The Merchant Category Code (MCC) that best describes the business. Optional.
        sig { returns(T.nilable(String)) }
        attr_accessor :mcc

        # The specific sector within the industry category. Required if not providing MCC.
        sig { returns(T.nilable(String)) }
        attr_accessor :sector

        sig do
          params(
            category: T.nilable(String),
            mcc: T.nilable(String),
            sector: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The general category of the industry. Required if not providing MCC.
          category: nil,
          # The Merchant Category Code (MCC) that best describes the business. Optional.
          mcc: nil,
          # The specific sector within the industry category. Required if not providing MCC.
          sector: nil
        )
        end

        sig do
          override.returns(
            {
              category: T.nilable(String),
              mcc: T.nilable(String),
              sector: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
