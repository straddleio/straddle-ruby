# frozen_string_literal: true

require_relative "../../../test_helper"

class Straddle::Test::Resources::Embed::Accounts::CapabilityRequestsTest < Straddle::Test::ResourceTest
  def test_create
    response = @straddle.embed.accounts.capability_requests.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::Accounts::CapabilityRequestPagedV1
    end

    assert_pattern do
      response => {
        data: ^(Straddle::Internal::Type::ArrayOf[Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data]),
        meta: Straddle::PagedResponseMetadata,
        response_type: Straddle::Embed::Accounts::CapabilityRequestPagedV1::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.embed.accounts.capability_requests.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        category: Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Category,
        created_at: Time,
        status: Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Status,
        type: Straddle::Embed::Accounts::CapabilityRequestPagedV1::Data::Type,
        updated_at: Time,
        settings: ^(Straddle::Internal::Type::HashOf[Straddle::Internal::Type::Unknown]) | nil
      }
    end
  end
end
