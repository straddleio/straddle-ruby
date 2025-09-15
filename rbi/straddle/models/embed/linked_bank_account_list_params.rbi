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

        # The purpose of the linked bank accounts to return. Possible values: 'charges',
        # 'payouts', 'billing'.
        sig do
          returns(
            T.nilable(
              Straddle::Embed::LinkedBankAccountListParams::Purpose::OrSymbol
            )
          )
        end
        attr_reader :purpose

        sig do
          params(
            purpose:
              Straddle::Embed::LinkedBankAccountListParams::Purpose::OrSymbol
          ).void
        end
        attr_writer :purpose

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

        # The status of the linked bank accounts to return. Possible values: 'created',
        # 'onboarding', 'active', 'inactive', 'rejected'.
        sig do
          returns(
            T.nilable(
              Straddle::Embed::LinkedBankAccountListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Straddle::Embed::LinkedBankAccountListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

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
            purpose:
              Straddle::Embed::LinkedBankAccountListParams::Purpose::OrSymbol,
            sort_by: String,
            sort_order:
              Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol,
            status:
              Straddle::Embed::LinkedBankAccountListParams::Status::OrSymbol,
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
          # The purpose of the linked bank accounts to return. Possible values: 'charges',
          # 'payouts', 'billing'.
          purpose: nil,
          # Sort By.
          sort_by: nil,
          # Sort Order.
          sort_order: nil,
          # The status of the linked bank accounts to return. Possible values: 'created',
          # 'onboarding', 'active', 'inactive', 'rejected'.
          status: nil,
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
              purpose:
                Straddle::Embed::LinkedBankAccountListParams::Purpose::OrSymbol,
              sort_by: String,
              sort_order:
                Straddle::Embed::LinkedBankAccountListParams::SortOrder::OrSymbol,
              status:
                Straddle::Embed::LinkedBankAccountListParams::Status::OrSymbol,
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

        # The purpose of the linked bank accounts to return. Possible values: 'charges',
        # 'payouts', 'billing'.
        module Purpose
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Embed::LinkedBankAccountListParams::Purpose
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGES =
            T.let(
              :charges,
              Straddle::Embed::LinkedBankAccountListParams::Purpose::TaggedSymbol
            )
          PAYOUTS =
            T.let(
              :payouts,
              Straddle::Embed::LinkedBankAccountListParams::Purpose::TaggedSymbol
            )
          BILLING =
            T.let(
              :billing,
              Straddle::Embed::LinkedBankAccountListParams::Purpose::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountListParams::Purpose::TaggedSymbol
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

        # The status of the linked bank accounts to return. Possible values: 'created',
        # 'onboarding', 'active', 'inactive', 'rejected'.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Embed::LinkedBankAccountListParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Embed::LinkedBankAccountListParams::Status::TaggedSymbol
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
