# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::PaymentsTest < Straddle::Test::ResourceTest
  def test_list
    response = @straddle.payments.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::PaymentSummaryPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: String,
        description: String,
        external_id: String,
        funding_ids: ^(Straddle::Internal::Type::ArrayOf[String]),
        paykey: String,
        payment_date: Date,
        payment_type: Straddle::PaymentSummaryPagedV1::Data::PaymentType,
        status: Straddle::PaymentSummaryPagedV1::Data::Status,
        status_details: Straddle::StatusDetailsV1,
        trace_ids: ^(Straddle::Internal::Type::HashOf[String]),
        updated_at: Time,
        customer_details: Straddle::CustomerDetailsV1 | nil,
        effective_at: Time | nil,
        funding_id: String | nil,
        paykey_details: Straddle::PaykeyDetailsV1 | nil
      }
    end
  end
end
