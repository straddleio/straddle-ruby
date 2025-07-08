# typed: strong

module Straddle
  module Models
    class CustomerSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerSummaryPagedV1, Straddle::Internal::AnyHash)
        end

      sig { returns(T::Array[Straddle::CustomerSummaryPagedV1::Data]) }
      attr_accessor :data

      sig { returns(Straddle::CustomerSummaryPagedV1::Meta) }
      attr_reader :meta

      sig { params(meta: Straddle::CustomerSummaryPagedV1::Meta::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol)
      end
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::CustomerSummaryPagedV1::Data::OrHash],
          meta: Straddle::CustomerSummaryPagedV1::Meta::OrHash,
          response_type:
            Straddle::CustomerSummaryPagedV1::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
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
            data: T::Array[Straddle::CustomerSummaryPagedV1::Data],
            meta: Straddle::CustomerSummaryPagedV1::Meta,
            response_type:
              Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CustomerSummaryPagedV1::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the customer.
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the customer record was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The customer's email address.
        sig { returns(String) }
        attr_accessor :email

        # Full name of the individual or business name.
        sig { returns(String) }
        attr_accessor :name

        # The customer's phone number in E.164 format.
        sig { returns(String) }
        attr_accessor :phone

        sig do
          returns(Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig do
          returns(Straddle::CustomerSummaryPagedV1::Data::Type::TaggedSymbol)
        end
        attr_accessor :type

        # Timestamp of the most recent update to the customer record.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Unique identifier for the customer in your database, used for cross-referencing
        # between Straddle and your systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        sig do
          params(
            id: String,
            created_at: Time,
            email: String,
            name: String,
            phone: String,
            status: Straddle::CustomerSummaryPagedV1::Data::Status::OrSymbol,
            type: Straddle::CustomerSummaryPagedV1::Data::Type::OrSymbol,
            updated_at: Time,
            external_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the customer.
          id:,
          # Timestamp of when the customer record was created.
          created_at:,
          # The customer's email address.
          email:,
          # Full name of the individual or business name.
          name:,
          # The customer's phone number in E.164 format.
          phone:,
          status:,
          type:,
          # Timestamp of the most recent update to the customer record.
          updated_at:,
          # Unique identifier for the customer in your database, used for cross-referencing
          # between Straddle and your systems.
          external_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              email: String,
              name: String,
              phone: String,
              status:
                Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol,
              type: Straddle::CustomerSummaryPagedV1::Data::Type::TaggedSymbol,
              updated_at: Time,
              external_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::CustomerSummaryPagedV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::CustomerSummaryPagedV1::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::CustomerSummaryPagedV1::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDIVIDUAL =
            T.let(
              :individual,
              Straddle::CustomerSummaryPagedV1::Data::Type::TaggedSymbol
            )
          BUSINESS =
            T.let(
              :business,
              Straddle::CustomerSummaryPagedV1::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::CustomerSummaryPagedV1::Data::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CustomerSummaryPagedV1::Meta,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for this API request, useful for troubleshooting.
        sig { returns(String) }
        attr_accessor :api_request_id

        # Timestamp for this API request, useful for troubleshooting.
        sig { returns(Time) }
        attr_accessor :api_request_timestamp

        # Maximum allowed page size for this endpoint.
        sig { returns(Integer) }
        attr_accessor :max_page_size

        # Page number for paginated results.
        sig { returns(Integer) }
        attr_accessor :page_number

        # Number of items per page in this response.
        sig { returns(Integer) }
        attr_accessor :page_size

        # The field that the results were sorted by.
        sig { returns(String) }
        attr_accessor :sort_by

        sig do
          returns(
            Straddle::CustomerSummaryPagedV1::Meta::SortOrder::TaggedSymbol
          )
        end
        attr_accessor :sort_order

        sig { returns(Integer) }
        attr_accessor :total_items

        # The number of pages available.
        sig { returns(Integer) }
        attr_accessor :total_pages

        sig do
          params(
            api_request_id: String,
            api_request_timestamp: Time,
            max_page_size: Integer,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::CustomerSummaryPagedV1::Meta::SortOrder::OrSymbol,
            total_items: Integer,
            total_pages: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for this API request, useful for troubleshooting.
          api_request_id:,
          # Timestamp for this API request, useful for troubleshooting.
          api_request_timestamp:,
          # Maximum allowed page size for this endpoint.
          max_page_size:,
          # Page number for paginated results.
          page_number:,
          # Number of items per page in this response.
          page_size:,
          # The field that the results were sorted by.
          sort_by:,
          sort_order:,
          total_items:,
          # The number of pages available.
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              api_request_id: String,
              api_request_timestamp: Time,
              max_page_size: Integer,
              page_number: Integer,
              page_size: Integer,
              sort_by: String,
              sort_order:
                Straddle::CustomerSummaryPagedV1::Meta::SortOrder::TaggedSymbol,
              total_items: Integer,
              total_pages: Integer
            }
          )
        end
        def to_hash
        end

        module SortOrder
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::CustomerSummaryPagedV1::Meta::SortOrder)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::CustomerSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::CustomerSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::CustomerSummaryPagedV1::Meta::SortOrder::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
            T.all(Symbol, Straddle::CustomerSummaryPagedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::CustomerSummaryPagedV1::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
