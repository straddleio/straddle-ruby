# typed: strong

module Straddle
  module Models
    class FundingEventSummaryPagedV1 < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventSummaryPagedV1,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Straddle::FundingEventSummaryPagedV1::Data]) }
      attr_accessor :data

      sig { returns(Straddle::FundingEventSummaryPagedV1::Meta) }
      attr_reader :meta

      sig do
        params(meta: Straddle::FundingEventSummaryPagedV1::Meta::OrHash).void
      end
      attr_writer :meta

      # Indicates the structure of the returned content.
      #
      # - "object" means the `data` field contains a single JSON object.
      # - "array" means the `data` field contains an array of objects.
      # - "error" means the `data` field contains an error object with details of the
      #   issue.
      # - "none" means no data is returned.
      sig do
        returns(
          Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
        )
      end
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::FundingEventSummaryPagedV1::Data::OrHash],
          meta: Straddle::FundingEventSummaryPagedV1::Meta::OrHash,
          response_type:
            Straddle::FundingEventSummaryPagedV1::ResponseType::OrSymbol
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
            data: T::Array[Straddle::FundingEventSummaryPagedV1::Data],
            meta: Straddle::FundingEventSummaryPagedV1::Meta,
            response_type:
              Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::FundingEventSummaryPagedV1::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the funding event.
        sig { returns(String) }
        attr_accessor :id

        # The amount of the funding event in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        # Created at.
        sig { returns(Time) }
        attr_accessor :created_at

        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        sig do
          returns(
            Straddle::FundingEventSummaryPagedV1::Data::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        # The funding event types describes the direction and reason for the funding
        # event.
        sig do
          returns(
            Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # The number of payments associated with the funding event.
        sig { returns(Integer) }
        attr_accessor :payment_count

        # Trace Ids.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :trace_ids

        # Trace number.
        sig { returns(T::Array[String]) }
        attr_accessor :trace_numbers

        # The date on which the funding event occurred. For `deposits` and `returns`, this
        # is the date the funds were credited to your bank account. For `withdrawals` and
        # `reversals`, this is the date the funds were debited from your bank account.
        sig { returns(Date) }
        attr_accessor :transfer_date

        # Updated at.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The trace number of the funding event.
        sig { returns(T.nilable(String)) }
        attr_accessor :trace_number

        sig do
          params(
            id: String,
            amount: Integer,
            created_at: Time,
            direction:
              Straddle::FundingEventSummaryPagedV1::Data::Direction::OrSymbol,
            event_type:
              Straddle::FundingEventSummaryPagedV1::Data::EventType::OrSymbol,
            payment_count: Integer,
            trace_ids: T::Hash[Symbol, String],
            trace_numbers: T::Array[String],
            transfer_date: Date,
            updated_at: Time,
            trace_number: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the funding event.
          id:,
          # The amount of the funding event in cents.
          amount:,
          # Created at.
          created_at:,
          # Describes the direction of the funding event from the perspective of the
          # `linked_bank_account`.
          direction:,
          # The funding event types describes the direction and reason for the funding
          # event.
          event_type:,
          # The number of payments associated with the funding event.
          payment_count:,
          # Trace Ids.
          trace_ids:,
          # Trace number.
          trace_numbers:,
          # The date on which the funding event occurred. For `deposits` and `returns`, this
          # is the date the funds were credited to your bank account. For `withdrawals` and
          # `reversals`, this is the date the funds were debited from your bank account.
          transfer_date:,
          # Updated at.
          updated_at:,
          # The trace number of the funding event.
          trace_number: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              direction:
                Straddle::FundingEventSummaryPagedV1::Data::Direction::TaggedSymbol,
              event_type:
                Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol,
              payment_count: Integer,
              trace_ids: T::Hash[Symbol, String],
              trace_numbers: T::Array[String],
              transfer_date: Date,
              updated_at: Time,
              trace_number: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        module Direction
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::FundingEventSummaryPagedV1::Data::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEPOSIT =
            T.let(
              :deposit,
              Straddle::FundingEventSummaryPagedV1::Data::Direction::TaggedSymbol
            )
          WITHDRAWAL =
            T.let(
              :withdrawal,
              Straddle::FundingEventSummaryPagedV1::Data::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryPagedV1::Data::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The funding event types describes the direction and reason for the funding
        # event.
        module EventType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::FundingEventSummaryPagedV1::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE_DEPOSIT =
            T.let(
              :charge_deposit,
              Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
            )
          CHARGE_REVERSAL =
            T.let(
              :charge_reversal,
              Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_RETURN =
            T.let(
              :payout_return,
              Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
            )
          PAYOUT_WITHDRAWAL =
            T.let(
              :payout_withdrawal,
              Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryPagedV1::Data::EventType::TaggedSymbol
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
              Straddle::FundingEventSummaryPagedV1::Meta,
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
            Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::TaggedSymbol
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
              Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::OrSymbol,
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
                Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::TaggedSymbol,
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
              T.all(
                Symbol,
                Straddle::FundingEventSummaryPagedV1::Meta::SortOrder
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :asc,
              Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )
          DESC =
            T.let(
              :desc,
              Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventSummaryPagedV1::Meta::SortOrder::TaggedSymbol
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
            T.all(Symbol, Straddle::FundingEventSummaryPagedV1::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventSummaryPagedV1::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
