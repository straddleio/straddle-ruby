# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Embed::OrganizationsTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response = @straddle.embed.organizations.create(name: "name")

    assert_pattern do
      response => Straddle::Embed::OrganizationV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::OrganizationV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::OrganizationV1::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.embed.organizations.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::Embed::OrganizationPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        updated_at: Time,
        external_id: String | nil,
        metadata: ^(Straddle::Internal::Type::HashOf[String, nil?: true]) | nil
      }
    end
  end

  def test_get
    response = @straddle.embed.organizations.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::OrganizationV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::OrganizationV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::OrganizationV1::ResponseType
      }
    end
  end
end
