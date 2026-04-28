# typed: strong

module Straddle
  module Models
    module Embed
      class AccountListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::AccountListParams,
              Straddle::Internal::AnyHash
            )
          end

        # Results page number. Starts at page 1. Default value: 1
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Page size. Default value: 100. Max value: 1000
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig { returns(T.nilable(String)) }
        attr_reader :search_text

        sig { params(search_text: String).void }
        attr_writer :search_text

        # Sort By. Default value: 'id'.
        sig { returns(T.nilable(String)) }
        attr_reader :sort_by

        sig { params(sort_by: String).void }
        attr_writer :sort_by

        # Sort Order. Default value: 'asc'.
        sig do
          returns(
            T.nilable(Straddle::Embed::AccountListParams::SortOrder::OrSymbol)
          )
        end
        attr_reader :sort_order

        sig do
          params(
            sort_order: Straddle::Embed::AccountListParams::SortOrder::OrSymbol
          ).void
        end
        attr_writer :sort_order

        sig do
          returns(
            T.nilable(Straddle::Embed::AccountListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Straddle::Embed::AccountListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(T.nilable(Straddle::Embed::AccountListParams::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: Straddle::Embed::AccountListParams::Type::OrSymbol).void
        end
        attr_writer :type

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
            page_number: Integer,
            page_size: Integer,
            search_text: String,
            sort_by: String,
            sort_order: Straddle::Embed::AccountListParams::SortOrder::OrSymbol,
            status: Straddle::Embed::AccountListParams::Status::OrSymbol,
            type: Straddle::Embed::AccountListParams::Type::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Results page number. Starts at page 1. Default value: 1
          page_number: nil,
          # Page size. Default value: 100. Max value: 1000
          page_size: nil,
          search_text: nil,
          # Sort By. Default value: 'id'.
          sort_by: nil,
          # Sort Order. Default value: 'asc'.
          sort_order: nil,
          status: nil,
          type: nil,
          correlation_id: nil,
          request_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              search_text: String,
              sort_by: String,
              sort_order:
                Straddle::Embed::AccountListParams::SortOrder::OrSymbol,
              status: Straddle::Embed::AccountListParams::Status::OrSymbol,
              type: Straddle::Embed::AccountListParams::Type::OrSymbol,
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort Order. Default value: 'asc'.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountListParams::SortOrder)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::Embed::AccountListParams::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::Embed::AccountListParams::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::AccountListParams::SortOrder::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::Embed::AccountListParams::Status::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::Embed::AccountListParams::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::Embed::AccountListParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Embed::AccountListParams::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::Embed::AccountListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::Embed::AccountListParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::AccountListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              Straddle::Embed::AccountListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Straddle::Embed::AccountListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
