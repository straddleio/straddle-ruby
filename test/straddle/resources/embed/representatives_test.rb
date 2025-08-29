# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Embed::RepresentativesTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.embed.representatives.create(
        account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        dob: "1980-01-01",
        email: "ron.swanson@pawnee.com",
        first_name: "first_name",
        last_name: "last_name",
        mobile_number: "+12128675309",
        relationship: {control: true, owner: true, primary: true},
        ssn_last4: "1234"
      )

    assert_pattern do
      response => Straddle::Embed::Representative
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::Representative::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::Representative::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.embed.representatives.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        dob: "1980-01-01",
        email: "ron.swanson@pawnee.com",
        first_name: "Ron",
        last_name: "Swanson",
        mobile_number: "+12128675309",
        relationship: {control: true, owner: true, primary: true},
        ssn_last4: "1234"
      )

    assert_pattern do
      response => Straddle::Embed::Representative
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::Representative::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::Representative::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.embed.representatives.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::Embed::RepresentativePaged::Data
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        created_at: Time,
        dob: Date,
        email: String | nil,
        first_name: String,
        last_name: String,
        mobile_number: String,
        name: String,
        relationship: Straddle::Embed::RepresentativePaged::Data::Relationship,
        ssn_last4: String,
        status: Straddle::Embed::RepresentativePaged::Data::Status,
        status_detail: Straddle::Embed::RepresentativePaged::Data::StatusDetail,
        updated_at: Time,
        external_id: String | nil,
        metadata: ^(Straddle::Internal::Type::HashOf[String]) | nil,
        phone: String | nil,
        user_id: String | nil
      }
    end
  end

  def test_get
    response = @straddle.embed.representatives.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::Representative
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::Representative::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::Representative::ResponseType
      }
    end
  end

  def test_unmask
    response = @straddle.embed.representatives.unmask("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::Representative
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::Representative::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::Representative::ResponseType
      }
    end
  end
end
