# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Bridge::LinkTest < Straddle::Test::ResourceTest
  def test_bank_account_required_params
    response =
      @straddle.bridge.link.bank_account(
        account_number: "account_number",
        account_type: :checking,
        customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        routing_number: "xxxxxxxxx"
      )

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

  def test_create_paykey_required_params
    response =
      @straddle.bridge.link.create_paykey(
        customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        quiltt_token: "quiltt_token"
      )

    assert_pattern do
      response => Straddle::Models::Bridge::LinkCreatePaykeyResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::Bridge::LinkCreatePaykeyResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::Bridge::LinkCreatePaykeyResponse::ResponseType
      }
    end
  end

  def test_create_tan_required_params
    response =
      @straddle.bridge.link.create_tan(
        account_type: :checking,
        customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        routing_number: "routing_number",
        tan: "tan"
      )

    assert_pattern do
      response => Straddle::Models::Bridge::LinkCreateTanResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::Bridge::LinkCreateTanResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::Bridge::LinkCreateTanResponse::ResponseType
      }
    end
  end

  def test_plaid_required_params
    response =
      @straddle.bridge.link.plaid(
        customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        plaid_token: "plaid_token"
      )

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
end
