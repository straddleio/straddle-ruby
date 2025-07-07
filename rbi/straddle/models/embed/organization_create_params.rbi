# typed: strong

module Straddle
  module Models
    module Embed
      class OrganizationCreateParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::OrganizationCreateParams,
              Straddle::Internal::AnyHash
            )
          end

        # The name of the organization.
        sig { returns(String) }
        attr_accessor :name

        # Unique identifier for the organization in your database, used for
        # cross-referencing between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Up to 20 additional user-defined key-value pairs. Useful for storing additional
        # information about the organization in a structured format.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

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
            name: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the organization.
          name:,
          # Unique identifier for the organization in your database, used for
          # cross-referencing between Straddle and your systems.
          external_id: nil,
          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the organization in a structured format.
          metadata: nil,
          correlation_id: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
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
