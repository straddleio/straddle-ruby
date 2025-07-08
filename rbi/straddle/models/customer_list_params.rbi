# typed: strong

module Straddle
  module Models
    class CustomerListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerListParams, Straddle::Internal::AnyHash)
        end

      # Start date for filtering by `created_at` date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_from

      sig { params(created_from: Time).void }
      attr_writer :created_from

      # End date for filtering by `created_at` date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_to

      sig { params(created_to: Time).void }
      attr_writer :created_to

      # Filter customers by `email` address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Filter by your system's `external_id`.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Filter customers by `name` (partial match).
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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

      # General search term to filter customers.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      sig { returns(T.nilable(Straddle::CustomerListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::CustomerListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      sig do
        returns(T.nilable(Straddle::CustomerListParams::SortOrder::OrSymbol))
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::CustomerListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Filter customers by their current `status`.
      sig do
        returns(
          T.nilable(T::Array[Straddle::CustomerListParams::Status::OrSymbol])
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[Straddle::CustomerListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      # Filter by customer type `individual` or `business`.
      sig do
        returns(
          T.nilable(T::Array[Straddle::CustomerListParams::Type::OrSymbol])
        )
      end
      attr_reader :types

      sig do
        params(
          types: T::Array[Straddle::CustomerListParams::Type::OrSymbol]
        ).void
      end
      attr_writer :types

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
          created_from: Time,
          created_to: Time,
          email: String,
          external_id: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: Straddle::CustomerListParams::SortBy::OrSymbol,
          sort_order: Straddle::CustomerListParams::SortOrder::OrSymbol,
          status: T::Array[Straddle::CustomerListParams::Status::OrSymbol],
          types: T::Array[Straddle::CustomerListParams::Type::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Start date for filtering by `created_at` date.
        created_from: nil,
        # End date for filtering by `created_at` date.
        created_to: nil,
        # Filter customers by `email` address.
        email: nil,
        # Filter by your system's `external_id`.
        external_id: nil,
        # Filter customers by `name` (partial match).
        name: nil,
        # Page number for paginated results. Starts at 1.
        page_number: nil,
        # Number of results per page. Maximum: 1000.
        page_size: nil,
        # General search term to filter customers.
        search_text: nil,
        sort_by: nil,
        sort_order: nil,
        # Filter customers by their current `status`.
        status: nil,
        # Filter by customer type `individual` or `business`.
        types: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_from: Time,
            created_to: Time,
            email: String,
            external_id: String,
            name: String,
            page_number: Integer,
            page_size: Integer,
            search_text: String,
            sort_by: Straddle::CustomerListParams::SortBy::OrSymbol,
            sort_order: Straddle::CustomerListParams::SortOrder::OrSymbol,
            status: T::Array[Straddle::CustomerListParams::Status::OrSymbol],
            types: T::Array[Straddle::CustomerListParams::Type::OrSymbol],
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
          T.type_alias { T.all(Symbol, Straddle::CustomerListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME = T.let(:name, Straddle::CustomerListParams::SortBy::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Straddle::CustomerListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::CustomerListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Straddle::CustomerListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(:desc, Straddle::CustomerListParams::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CustomerListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Straddle::CustomerListParams::Status::TaggedSymbol)
        REVIEW =
          T.let(:review, Straddle::CustomerListParams::Status::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Straddle::CustomerListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::CustomerListParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::CustomerListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CustomerListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(:individual, Straddle::CustomerListParams::Type::TaggedSymbol)
        BUSINESS =
          T.let(:business, Straddle::CustomerListParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
