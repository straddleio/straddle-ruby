# typed: strong

module Straddle
  module Models
    module Embed
      class CapabilityV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::CapabilityV1, Straddle::Internal::AnyHash)
          end

        sig do
          returns(Straddle::Embed::CapabilityV1::CapabilityStatus::TaggedSymbol)
        end
        attr_accessor :capability_status

        sig do
          params(
            capability_status:
              Straddle::Embed::CapabilityV1::CapabilityStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(capability_status:)
        end

        sig do
          override.returns(
            {
              capability_status:
                Straddle::Embed::CapabilityV1::CapabilityStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module CapabilityStatus
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::CapabilityV1::CapabilityStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Straddle::Embed::CapabilityV1::CapabilityStatus::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::Embed::CapabilityV1::CapabilityStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::CapabilityV1::CapabilityStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
