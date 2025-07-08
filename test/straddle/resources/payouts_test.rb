# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::PayoutsTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.payouts.create(
        amount: 10_000,
        currency: "currency",
        description: "Vendor invoice payment",
        device: {ip_address: "192.168.1.1"},
        external_id: "external_id",
        paykey: "paykey",
        payment_date: "2019-12-27"
      )

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.payouts.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        amount: 10_000,
        description: "description",
        payment_date: "2019-12-27"
      )

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_cancel_required_params
    response = @straddle.payouts.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", reason: "reason")

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_get
    response = @straddle.payouts.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_hold_required_params
    response = @straddle.payouts.hold("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", reason: "reason")

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_release_required_params
    response = @straddle.payouts.release("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", reason: "reason")

    assert_pattern do
      response => Straddle::PayoutV1
    end

    assert_pattern do
      response => {
        data: Straddle::PayoutV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::PayoutV1::ResponseType
      }
    end
  end

  def test_unmask
    response = @straddle.payouts.unmask("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Models::PayoutUnmaskResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::PayoutUnmaskResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::PayoutUnmaskResponse::ResponseType
      }
    end
  end
end
