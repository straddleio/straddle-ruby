# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Embed::LinkedBankAccountsTest < Straddle::Test::ResourceTest
  def test_create_required_params
    response =
      @straddle.embed.linked_bank_accounts.create(
        account_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        bank_account: {
          account_holder: "account_holder",
          account_number: "account_number",
          routing_number: "xxxxxxxxx"
        }
      )

    assert_pattern do
      response => Straddle::Embed::LinkedBankAccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::LinkedBankAccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::LinkedBankAccountV1::ResponseType
      }
    end
  end

  def test_update_required_params
    response =
      @straddle.embed.linked_bank_accounts.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        bank_account: {
          account_holder: "account_holder",
          account_number: "account_number",
          routing_number: "xxxxxxxxx"
        }
      )

    assert_pattern do
      response => Straddle::Embed::LinkedBankAccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::LinkedBankAccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::LinkedBankAccountV1::ResponseType
      }
    end
  end

  def test_list
    response = @straddle.embed.linked_bank_accounts.list

    assert_pattern do
      response => Straddle::Internal::PageNumberSchema
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Straddle::Embed::LinkedBankAccountPagedV1::Data
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        bank_account: Straddle::Embed::LinkedBankAccountPagedV1::Data::BankAccount,
        created_at: Time,
        status: Straddle::Embed::LinkedBankAccountPagedV1::Data::Status,
        status_detail: Straddle::Embed::LinkedBankAccountPagedV1::Data::StatusDetail,
        updated_at: Time,
        metadata: ^(Straddle::Internal::Type::HashOf[String, nil?: true]) | nil,
        platform_id: String | nil
      }
    end
  end

  def test_get
    response = @straddle.embed.linked_bank_accounts.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::LinkedBankAccountV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::LinkedBankAccountV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::LinkedBankAccountV1::ResponseType
      }
    end
  end

  def test_unmask
    response = @straddle.embed.linked_bank_accounts.unmask("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Embed::LinkedBankAccountUnmaskV1
    end

    assert_pattern do
      response => {
        data: Straddle::Embed::LinkedBankAccountUnmaskV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Embed::LinkedBankAccountUnmaskV1::ResponseType
      }
    end
  end
end
