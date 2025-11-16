# typed: strong

module Straddle
  module Models
    class PaymentSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentSummaryPagedV1, Straddle::Internal::AnyHash)
        end

      sig { returns(T::Array[Straddle::PaymentSummaryPagedV1::Data]) }
      attr_accessor :data

      sig { returns(Straddle::PaymentSummaryPagedV1::Meta) }
      attr_reader :meta

      sig { params(meta: Straddle::PaymentSummaryPagedV1::Meta::OrHash).void }
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol)
      end
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::PaymentSummaryPagedV1::Data::OrHash],
          meta: Straddle::PaymentSummaryPagedV1::Meta::OrHash,
          response_type: Straddle::PaymentSummaryPagedV1::ResponseType::OrSymbol
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
            data: T::Array[Straddle::PaymentSummaryPagedV1::Data],
            meta: Straddle::PaymentSummaryPagedV1::Meta,
            response_type:
              Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::PaymentSummaryPagedV1::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the `charge` or `payout`.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the `charge` or `payout` in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        # The time the `charge` or `payout` was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The currency of the `charge` or `payout`. Only USD is supported.
        sig { returns(String) }
        attr_accessor :currency

        # An arbitrary description for the `charge` or `payout`.
        sig { returns(String) }
        attr_accessor :description

        # Unique identifier for the `charge` or `payout` in your database. This value must
        # be unique across all charges or payouts.
        sig { returns(String) }
        attr_accessor :external_id

        # Funding ids.
        sig { returns(T::Array[String]) }
        attr_accessor :funding_ids

        # Value of the `paykey` used for the `charge` or `payout`.
        sig { returns(String) }
        attr_accessor :paykey

        # The desired date on which the payment should be occur. For charges, this means
        # the date you want the customer to be debited on. For payouts, this means the
        # date you want the funds to be sent from your bank account.
        sig { returns(Date) }
        attr_accessor :payment_date

        # The type of payment. Valid values are `charge` or `payout`.
        sig do
          returns(
            Straddle::PaymentSummaryPagedV1::Data::PaymentType::TaggedSymbol
          )
        end
        attr_accessor :payment_type

        # The current status of the `charge` or `payout`.
        sig do
          returns(Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Details about the current status of the `charge` or `payout`.
        sig { returns(Straddle::StatusDetailsV1) }
        attr_reader :status_details

        sig { params(status_details: Straddle::StatusDetailsV1::OrHash).void }
        attr_writer :status_details

        # Trace ids.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :trace_ids

        # The time the `charge` or `payout` was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Information about the customer associated with the charge or payout.
        sig { returns(T.nilable(Straddle::CustomerDetailsV1)) }
        attr_reader :customer_details

        sig do
          params(customer_details: Straddle::CustomerDetailsV1::OrHash).void
        end
        attr_writer :customer_details

        # The actual date on which the payment occurred. For charges, this is the date the
        # customer was debited. For payouts, this is the date the funds were sent from
        # your bank account.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        # Unique identifier for the funding event associated with the `charge` or
        # `payout`.
        sig { returns(T.nilable(String)) }
        attr_accessor :funding_id

        # Information about the paykey used for the `charge` or `payout`.
        sig { returns(T.nilable(Straddle::PaykeyDetailsV1)) }
        attr_reader :paykey_details

        sig { params(paykey_details: Straddle::PaykeyDetailsV1::OrHash).void }
        attr_writer :paykey_details

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Time,
            currency: String,
            description: String,
            external_id: String,
            funding_ids: T::Array[String],
            paykey: String,
            payment_date: Date,
            payment_type:
              Straddle::PaymentSummaryPagedV1::Data::PaymentType::OrSymbol,
            status: Straddle::PaymentSummaryPagedV1::Data::Status::OrSymbol,
            status_details: Straddle::StatusDetailsV1::OrHash,
            trace_ids: T::Hash[Symbol, String],
            updated_at: Time,
            customer_details: Straddle::CustomerDetailsV1::OrHash,
            effective_at: T.nilable(Time),
            funding_id: T.nilable(String),
            paykey_details: Straddle::PaykeyDetailsV1::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the `charge` or `payout`.
          id:,
          # The amount of the `charge` or `payout` in cents.
          amount:,
          # The time the `charge` or `payout` was created.
          created_at:,
          # The currency of the `charge` or `payout`. Only USD is supported.
          currency:,
          # An arbitrary description for the `charge` or `payout`.
          description:,
          # Unique identifier for the `charge` or `payout` in your database. This value must
          # be unique across all charges or payouts.
          external_id:,
          # Funding ids.
          funding_ids:,
          # Value of the `paykey` used for the `charge` or `payout`.
          paykey:,
          # The desired date on which the payment should be occur. For charges, this means
          # the date you want the customer to be debited on. For payouts, this means the
          # date you want the funds to be sent from your bank account.
          payment_date:,
          # The type of payment. Valid values are `charge` or `payout`.
          payment_type:,
          # The current status of the `charge` or `payout`.
          status:,
          # Details about the current status of the `charge` or `payout`.
          status_details:,
          # Trace ids.
          trace_ids:,
          # The time the `charge` or `payout` was last updated.
          updated_at:,
          # Information about the customer associated with the charge or payout.
          customer_details: nil,
          # The actual date on which the payment occurred. For charges, this is the date the
          # customer was debited. For payouts, this is the date the funds were sent from
          # your bank account.
          effective_at: nil,
          # Unique identifier for the funding event associated with the `charge` or
          # `payout`.
          funding_id: nil,
          # Information about the paykey used for the `charge` or `payout`.
          paykey_details: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              currency: String,
              description: String,
              external_id: String,
              funding_ids: T::Array[String],
              paykey: String,
              payment_date: Date,
              payment_type:
                Straddle::PaymentSummaryPagedV1::Data::PaymentType::TaggedSymbol,
              status:
                Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol,
              status_details: Straddle::StatusDetailsV1,
              trace_ids: T::Hash[Symbol, String],
              updated_at: Time,
              customer_details: Straddle::CustomerDetailsV1,
              effective_at: T.nilable(Time),
              funding_id: T.nilable(String),
              paykey_details: Straddle::PaykeyDetailsV1
            }
          )
        end
        def to_hash
        end

        # The type of payment. Valid values are `charge` or `payout`.
        module PaymentType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaymentSummaryPagedV1::Data::PaymentType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE =
            T.let(
              :charge,
              Straddle::PaymentSummaryPagedV1::Data::PaymentType::TaggedSymbol
            )
          PAYOUT =
            T.let(
              :payout,
              Straddle::PaymentSummaryPagedV1::Data::PaymentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaymentSummaryPagedV1::Data::PaymentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current status of the `charge` or `payout`.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaymentSummaryPagedV1::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaymentSummaryPagedV1::Data::Status::TaggedSymbol
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
              Straddle::PaymentSummaryPagedV1::Meta,
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
            Straddle::PaymentSummaryPagedV1::Meta::SortOrder::TaggedSymbol
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
              Straddle::PaymentSummaryPagedV1::Meta::SortOrder::OrSymbol,
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
                Straddle::PaymentSummaryPagedV1::Meta::SortOrder::TaggedSymbol,
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
              T.all(Symbol, Straddle::PaymentSummaryPagedV1::Meta::SortOrder)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::PaymentSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::PaymentSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaymentSummaryPagedV1::Meta::SortOrder::TaggedSymbol
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
            T.all(Symbol, Straddle::PaymentSummaryPagedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::PaymentSummaryPagedV1::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
