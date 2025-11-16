# frozen_string_literal: true

require_relative "../../test_helper"

class Straddle::Test::Resources::Customers::ReviewTest < Straddle::Test::ResourceTest
  def test_decision_required_params
    response = @straddle.customers.review.decision("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", status: :verified)

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
    response = @straddle.customers.review.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::Customers::CustomerReviewV1
    end

    assert_pattern do
      response => {
        data: Straddle::Customers::CustomerReviewV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Customers::CustomerReviewV1::ResponseType
      }
    end
  end

  def test_refresh_review
    response = @straddle.customers.review.refresh_review("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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
end
