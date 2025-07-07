# typed: strong

module Straddle
  module Models
    module Embed
      class OrganizationListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::OrganizationListParams,
              Straddle::Internal::AnyHash
            )
          end

        # List organizations by their external ID.
        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        # List organizations by name (partial match supported).
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Results page number. Starts at page 1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Page size. Max value: 1000
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Sort By.
        sig { returns(T.nilable(String)) }
        attr_reader :sort_by

        sig { params(sort_by: String).void }
        attr_writer :sort_by

        # Sort Order.
        sig do
          returns(
            T.nilable(
              Straddle::Embed::OrganizationListParams::SortOrder::OrSymbol
            )
          )
        end
        attr_reader :sort_order

        sig do
          params(
            sort_order:
              Straddle::Embed::OrganizationListParams::SortOrder::OrSymbol
          ).void
        end
        attr_writer :sort_order

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
            external_id: String,
            name: String,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::Embed::OrganizationListParams::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List organizations by their external ID.
          external_id: nil,
          # List organizations by name (partial match supported).
          name: nil,
          # Results page number. Starts at page 1.
          page_number: nil,
          # Page size. Max value: 1000
          page_size: nil,
          # Sort By.
          sort_by: nil,
          # Sort Order.
          sort_order: nil,
          correlation_id: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              external_id: String,
              name: String,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::Embed::OrganizationListParams::SortOrder::OrSymbol,
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort Order.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::OrganizationListParams::SortOrder)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::Embed::OrganizationListParams::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::Embed::OrganizationListParams::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::OrganizationListParams::SortOrder::TaggedSymbol
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
