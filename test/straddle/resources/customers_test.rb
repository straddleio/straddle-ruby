# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::CustomersTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.customers.create(
        device: {ip_address: "192.168.1.1"},
        email: "ron.swanson@pawnee.com",
        name: "Ron Swanson",
        phone: "+12128675309",
        type: :individual
      )

    assert_pattern do
      response => Straddle::CustomerV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerV1::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.customers.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        device: {ip_address: "192.168.1.1"},
        email: "dev@stainless.com",
        name: "name",
        phone: "+46991022",
        status: :pending
      )

    assert_pattern do
      response => Straddle::CustomerV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerV1::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.customers.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::CustomerSummaryPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        email: String,
        name: String,
        phone: String,
        status: Straddle::CustomerSummaryPagedV1::Data::Status,
        type: Straddle::CustomerSummaryPagedV1::Data::Type,
        updated_at: Time,
        external_id: String | nil
      }
    end
  end

  def test_delete
    response = @straddle.customers.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::CustomerV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerV1::ResponseType
      }
    end
  end

  def test_get
    response = @straddle.customers.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::CustomerV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerV1::ResponseType
      }
    end
  end

  def test_refresh_review
    response = @straddle.customers.refresh_review("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::CustomerV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerV1::ResponseType
      }
    end
  end

  def test_unmasked
    response = @straddle.customers.unmasked("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::CustomerUnmaskedV1
    end

    assert_pattern do
      response => {
        data: Straddle::CustomerUnmaskedV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::CustomerUnmaskedV1::ResponseType
      }
    end
  end
end
