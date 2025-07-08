# typed: strong

module Straddle
  module Models
    module Embed
      class OrganizationV1 < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Embed::OrganizationV1, Straddle::Internal::AnyHash)
          end

        sig { returns(Straddle::Embed::OrganizationV1::Data) }
        attr_reader :data

        sig { params(data: Straddle::Embed::OrganizationV1::Data::OrHash).void }
        attr_writer :data

        # Metadata about the API request, including an identifier and timestamp.
        sig { returns(Straddle::ResponseMetadata) }
        attr_reader :meta

        sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
        attr_writer :meta

        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        sig do
          returns(Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol)
        end
        attr_accessor :response_type

        sig do
          params(
            data: Straddle::Embed::OrganizationV1::Data::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type:
              Straddle::Embed::OrganizationV1::ResponseType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Metadata about the API request, including an identifier and timestamp.
          meta:,
          # Indicates the structure of the returned content.
          #
          # - "object" means the `data` field contains a single JSON object.
          # - "array" means the `data` field contains an array of objects.
          # - "error" means the `data` field contains an error object with details of the
          #   issue.
          # - "none" means no data is returned.
          response_type:
        )
        end

        sig do
          override.returns(
            {
              data: Straddle::Embed::OrganizationV1::Data,
              meta: Straddle::ResponseMetadata,
              response_type:
                Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Data < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Embed::OrganizationV1::Data,
                Straddle::Internal::AnyHash
              )
            end

          # Straddle's unique identifier for the organization.
          sig { returns(String) }
          attr_accessor :id

          # Timestamp of when the organization was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The name of the organization.
          sig { returns(String) }
          attr_accessor :name

          # Timestamp of the most recent update to the organization.
          sig { returns(Time) }
          attr_accessor :updated_at

          # Unique identifier for the organization in your database, used for
          # cross-referencing between Straddle and your systems.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_id

          # Up to 20 additional user-defined key-value pairs. Useful for storing additional
          # information about the organization in a structured format.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              id: String,
              created_at: Time,
              name: String,
              updated_at: Time,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
            ).returns(T.attached_class)
          end
          def self.new(
            # Straddle's unique identifier for the organization.
            id:,
            # Timestamp of when the organization was created.
            created_at:,
            # The name of the organization.
            name:,
            # Timestamp of the most recent update to the organization.
            updated_at:,
            # Unique identifier for the organization in your database, used for
            # cross-referencing between Straddle and your systems.
            external_id: nil,
            # Up to 20 additional user-defined key-value pairs. Useful for storing additional
            # information about the organization in a structured format.
            metadata: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                name: String,
                updated_at: Time,
                external_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end
        end

        # Indicates the structure of the returned content.
        #
        # - "object" means the `data` field contains a single JSON object.
        # - "array" means the `data` field contains an array of objects.
        # - "error" means the `data` field contains an error object with details of the
        #   issue.
        # - "none" means no data is returned.
        module ResponseType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::OrganizationV1::ResponseType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :object,
              Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
            )
          ARRAY =
            T.let(
              :array,
              Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::OrganizationV1::ResponseType::TaggedSymbol
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
