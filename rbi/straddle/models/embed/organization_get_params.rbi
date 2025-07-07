# typed: strong

module Straddle
  module Models
    module Embed
      class OrganizationGetParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::OrganizationGetParams,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        sig do
          params(
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(correlation_id: nil, request_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
