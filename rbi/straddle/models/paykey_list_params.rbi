# typed: strong

module Straddle
  module Models
    class PaykeyListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyListParams, Straddle::Internal::AnyHash)
        end

      # Filter paykeys by related customer ID.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Page number for paginated results. Starts at 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page. Maximum: 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig { returns(T.nilable(Straddle::PaykeyListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig { params(sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol).void }
      attr_writer :sort_by

      sig do
        returns(T.nilable(Straddle::PaykeyListParams::SortOrder::OrSymbol))
      end
      attr_reader :sort_order

      sig do
        params(sort_order: Straddle::PaykeyListParams::SortOrder::OrSymbol).void
      end
      attr_writer :sort_order

      # Filter paykeys by their source.
      sig do
        returns(
          T.nilable(T::Array[Straddle::PaykeyListParams::Source::OrSymbol])
        )
      end
      attr_reader :source

      sig do
        params(
          source: T::Array[Straddle::PaykeyListParams::Source::OrSymbol]
        ).void
      end
      attr_writer :source

      # Filter paykeys by their current status.
      sig do
        returns(
          T.nilable(T::Array[Straddle::PaykeyListParams::Status::OrSymbol])
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[Straddle::PaykeyListParams::Status::OrSymbol]
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

      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
          sort_order: Straddle::PaykeyListParams::SortOrder::OrSymbol,
          source: T::Array[Straddle::PaykeyListParams::Source::OrSymbol],
          status: T::Array[Straddle::PaykeyListParams::Status::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter paykeys by related customer ID.
        customer_id: nil,
        # Page number for paginated results. Starts at 1.
        page_number: nil,
        # Number of results per page. Maximum: 1000.
        page_size: nil,
        sort_by: nil,
        sort_order: nil,
        # Filter paykeys by their source.
        source: nil,
        # Filter paykeys by their current status.
        status: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
            sort_order: Straddle::PaykeyListParams::SortOrder::OrSymbol,
            source: T::Array[Straddle::PaykeyListParams::Source::OrSymbol],
            status: T::Array[Straddle::PaykeyListParams::Status::OrSymbol],
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaykeyListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSTITUTION_NAME =
          T.let(
            :institution_name,
            Straddle::PaykeyListParams::SortBy::TaggedSymbol
          )
        EXPIRES_AT =
          T.let(:expires_at, Straddle::PaykeyListParams::SortBy::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Straddle::PaykeyListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaykeyListParams::SortOrder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Straddle::PaykeyListParams::SortOrder::TaggedSymbol)
        DESC = T.let(:desc, Straddle::PaykeyListParams::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Source
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaykeyListParams::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BANK_ACCOUNT =
          T.let(:bank_account, Straddle::PaykeyListParams::Source::TaggedSymbol)
        STRADDLE =
          T.let(:straddle, Straddle::PaykeyListParams::Source::TaggedSymbol)
        MX = T.let(:mx, Straddle::PaykeyListParams::Source::TaggedSymbol)
        PLAID = T.let(:plaid, Straddle::PaykeyListParams::Source::TaggedSymbol)
        TAN = T.let(:tan, Straddle::PaykeyListParams::Source::TaggedSymbol)
        QUILTT =
          T.let(:quiltt, Straddle::PaykeyListParams::Source::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyListParams::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaykeyListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Straddle::PaykeyListParams::Status::TaggedSymbol)
        ACTIVE =
          T.let(:active, Straddle::PaykeyListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::PaykeyListParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::PaykeyListParams::Status::TaggedSymbol)
        REVIEW =
          T.let(:review, Straddle::PaykeyListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
