# typed: strong

module Straddle
  module Models
    class FundingEventListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::FundingEventListParams, Straddle::Internal::AnyHash)
        end

      # The start date of the range to filter by using the `YYYY-MM-DD` format.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_from

      # The end date of the range to filter by using the `YYYY-MM-DD` format.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_to

      # Describes the direction of the funding event from the perspective of the
      # `linked_bank_account`.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::Direction::OrSymbol)
        )
      end
      attr_reader :direction

      sig do
        params(
          direction: Straddle::FundingEventListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The funding event types describes the direction and reason for the funding
      # event.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::EventType::OrSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Straddle::FundingEventListParams::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      # Results page number. Starts at page 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Results page size. Max value: 1000
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # The field to sort the results by.
      sig do
        returns(T.nilable(Straddle::FundingEventListParams::SortBy::OrSymbol))
      end
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      # The order in which to sort the results.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Trace number.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_number

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
          created_from: T.nilable(Date),
          created_to: T.nilable(Date),
          direction: Straddle::FundingEventListParams::Direction::OrSymbol,
          event_type: Straddle::FundingEventListParams::EventType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
          sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol,
          trace_number: T.nilable(String),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The start date of the range to filter by using the `YYYY-MM-DD` format.
        created_from: nil,
        # The end date of the range to filter by using the `YYYY-MM-DD` format.
        created_to: nil,
        # Describes the direction of the funding event from the perspective of the
        # `linked_bank_account`.
        direction: nil,
        # The funding event types describes the direction and reason for the funding
        # event.
        event_type: nil,
        # Results page number. Starts at page 1.
        page_number: nil,
        # Results page size. Max value: 1000
        page_size: nil,
        # The field to sort the results by.
        sort_by: nil,
        # The order in which to sort the results.
        sort_order: nil,
        # Trace number.
        trace_number: nil,
        correlation_id: nil,
        request_id: nil,
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_from: T.nilable(Date),
            created_to: T.nilable(Date),
            direction: Straddle::FundingEventListParams::Direction::OrSymbol,
            event_type: Straddle::FundingEventListParams::EventType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
            sort_order: Straddle::FundingEventListParams::SortOrder::OrSymbol,
            trace_number: T.nilable(String),
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
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
            T.all(Symbol, Straddle::FundingEventListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :deposit,
            Straddle::FundingEventListParams::Direction::TaggedSymbol
          )
        WITHDRAWAL =
          T.let(
            :withdrawal,
            Straddle::FundingEventListParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::Direction::TaggedSymbol]
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
            T.all(Symbol, Straddle::FundingEventListParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGE_DEPOSIT =
          T.let(
            :charge_deposit,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        CHARGE_REVERSAL =
          T.let(
            :charge_reversal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_RETURN =
          T.let(
            :payout_return,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )
        PAYOUT_WITHDRAWAL =
          T.let(
            :payout_withdrawal,
            Straddle::FundingEventListParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort the results by.
      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::SortBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_DATE =
          T.let(
            :transfer_date,
            Straddle::FundingEventListParams::SortBy::TaggedSymbol
          )
        ID = T.let(:id, Straddle::FundingEventListParams::SortBy::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::FundingEventListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The order in which to sort the results.
      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, Straddle::FundingEventListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(
            :desc,
            Straddle::FundingEventListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
