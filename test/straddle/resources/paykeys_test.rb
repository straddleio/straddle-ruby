# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::PaykeysTest < Straddle::Test::ResourceTest
  def test_list
    response = @straddle.paykeys.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::PaykeySummaryPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        config: Straddle::PaykeySummaryPagedV1::Data::Config,
        created_at: Time,
        label: String,
        paykey: String,
        source: Straddle::PaykeySummaryPagedV1::Data::Source,
        status: Straddle::PaykeySummaryPagedV1::Data::Status,
        updated_at: Time,
        bank_data: Straddle::PaykeySummaryPagedV1::Data::BankData | nil,
        customer_id: String | nil,
        expires_at: Time | nil,
        institution_name: String | nil,
        status_details: Straddle::PaykeySummaryPagedV1::Data::StatusDetails | nil
      }
    end
  end

  def test_cancel
    response = @straddle.paykeys.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::PaykeyV1
    end

    assert_pattern do
      response => {
        data: Straddle::PaykeyV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PaykeyV1::ResponseType
      }
    end
  end

  def test_get
    response = @straddle.paykeys.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::PaykeyV1
    end

    assert_pattern do
      response => {
        data: Straddle::PaykeyV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PaykeyV1::ResponseType
      }
    end
  end

  def test_reveal
    response = @straddle.paykeys.reveal("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Models::PaykeyRevealResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::PaykeyRevealResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::PaykeyRevealResponse::ResponseType
      }
    end
  end

  def test_review_required_params
    response = @straddle.paykeys.review("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", status: :active)

    assert_pattern do
      response => Straddle::PaykeyV1
    end

    assert_pattern do
      response => {
        data: Straddle::PaykeyV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PaykeyV1::ResponseType
      }
    end
  end

  def test_unmasked
    response = @straddle.paykeys.unmasked("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::PaykeyUnmaskedV1
    end

    assert_pattern do
      response => {
        data: Straddle::PaykeyUnmaskedV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PaykeyUnmaskedV1::ResponseType
      }
    end
  end
end
