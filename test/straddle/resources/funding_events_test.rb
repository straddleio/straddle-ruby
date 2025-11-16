# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::FundingEventsTest < Straddle::Test::ResourceTest
  def test_list
    response = @straddle.funding_events.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::FundingEventSummaryPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        direction: Straddle::FundingEventSummaryPagedV1::Data::Direction,
        event_type: Straddle::FundingEventSummaryPagedV1::Data::EventType,
        payment_count: Integer,
        trace_ids: ^(Straddle::Internal::Type::HashOf[String]),
        trace_numbers: ^(Straddle::Internal::Type::ArrayOf[String]),
        transfer_date: Date,
        updated_at: Time,
        trace_number: String | nil
      }
    end
  end

  def test_get
    response = @straddle.funding_events.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::FundingEventSummaryItemV1
    end

    assert_pattern do
      response => {
        data: Straddle::FundingEventSummaryItemV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::FundingEventSummaryItemV1::ResponseType
      }
    end
  end
end
