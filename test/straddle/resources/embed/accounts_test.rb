# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Embed::AccountsTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.embed.accounts.create(
        access_level: :standard,
        account_type: :business,
        business_profile: {name: "name", website: "https://example.com"},
        organization_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Straddle::Embed::AccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::AccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::AccountV1::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.embed.accounts.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        business_profile: {name: "name", website: "https://example.com"}
      )

    assert_pattern do
      response => Straddle::Embed::AccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::AccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::AccountV1::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.embed.accounts.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::Embed::AccountPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        access_level: Straddle::Embed::AccountPagedV1::Data::AccessLevel,
        organization_id: String,
        status: Straddle::Embed::AccountPagedV1::Data::Status,
        status_detail: Straddle::Embed::AccountPagedV1::Data::StatusDetail,
        type: Straddle::Embed::AccountPagedV1::Data::Type,
        business_profile: Straddle::Embed::BusinessProfileV1 | nil,
        capabilities: Straddle::Embed::AccountPagedV1::Data::Capabilities | nil,
        created_at: Time | nil,
        external_id: String | nil,
        metadata: ^(Straddle::Internal::Type::HashOf[String, nil?: true]) | nil,
        settings: Straddle::Embed::AccountPagedV1::Data::Settings | nil,
        terms_of_service: Straddle::Embed::TermsOfServiceV1 | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get
    response = @straddle.embed.accounts.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::AccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::AccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::AccountV1::ResponseType
      }
    end
  end

  def test_onboard_required_params
    response =
      @straddle.embed.accounts.onboard(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        terms_of_service: {
          accepted_date: "2019-12-27T18:11:19.117Z",
          agreement_type: :embedded,
          agreement_url: "agreement_url"
        }
      )

    assert_pattern do
      response => Straddle::Embed::AccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::AccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::AccountV1::ResponseType
      }
    end
  end

  def test_simulate
    response = @straddle.embed.accounts.simulate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::AccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::AccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::AccountV1::ResponseType
      }
    end
  end
end
