# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Paykeys::ReviewTest < Straddle::Test::ResourceTest
  def test_decision_required_params
    response = @straddle.paykeys.review.decision("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", status: :active)

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
    response = @straddle.paykeys.review.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Models::Paykeys::ReviewGetResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::Paykeys::ReviewGetResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::Paykeys::ReviewGetResponse::ResponseType
      }
    end
  end

  def test_refresh_review
    response = @straddle.paykeys.review.refresh_review("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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
