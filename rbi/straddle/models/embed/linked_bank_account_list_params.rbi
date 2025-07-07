# typed: strong

module Straddle
  module Models
    module Embed
      class LinkedBankAccountListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Embed::LinkedBankAccountListParams,
              Straddle::Internal::AnyHash
            )
          end

        # The unique identifier of the related account.
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        sig do
          returns(
            T.nilable(
              Straddle::Embed::LinkedBankAccountListParams::Level::OrSymbol
            )
          )
        end
        attr_reader :level

        sig do
          params(
            level: Straddle::Embed::LinkedBankAccountListParams::Level::OrSymbol
          ).void
        end
        attr_writer :level

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
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol
            )
          )
        end
        attr_reader :sort_order

        sig do
          params(
            sort_order:
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol
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
            account_id: String,
            level:
              Straddle::Embed::LinkedBankAccountListParams::Level::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the related account.
          account_id: nil,
          level: nil,
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
              account_id: String,
              level:
                Straddle::Embed::LinkedBankAccountListParams::Level::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol,
              correlation_id: String,
              request_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Level
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::Embed::LinkedBankAccountListParams::Level)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT =
            T.let(
              :account,
              Straddle::Embed::LinkedBankAccountListParams::Level::TaggedSymbol
            )
          PLATFORM =
            T.let(
              :platform,
              Straddle::Embed::LinkedBankAccountListParams::Level::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountListParams::Level::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort Order.
        module SortOrder
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Embed::LinkedBankAccountListParams::SortOrder
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountListParams::SortOrder::TaggedSymbol
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
