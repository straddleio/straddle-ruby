# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::ChargesTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.charges.create(
        amount: 10_000,
        config: {balance_check: :required},
        consent_type: :internet,
        currency: "currency",
        description: "Monthly subscription fee",
        device: {ip_address: "192.168.1.1"},
        external_id: "external_id",
        paykey: "paykey",
        payment_date: "2019-12-27"
      )

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.charges.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        amount: 10_000,
        description: "Monthly subscription fee",
        payment_date: "2019-12-27"
      )

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_cancel
    response = @straddle.charges.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_get
    response = @straddle.charges.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_hold
    response = @straddle.charges.hold("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_release
    response = @straddle.charges.release("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::ChargeV1
    end

    assert_pattern do
      response => {
        data: Straddle::ChargeV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::ChargeV1::ResponseType
      }
    end
  end

  def test_unmask
    response = @straddle.charges.unmask("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Models::ChargeUnmaskResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::ChargeUnmaskResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::ChargeUnmaskResponse::ResponseType
      }
    end
  end
end
