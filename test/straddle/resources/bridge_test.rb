# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::BridgeTest < Straddle::Test::ResourceTest
  def test_initialize__required_params
    response = @straddle.bridge.initialize_(customer_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Straddle::BridgeTokenV1
    end

    assert_pattern do
      response => {
        data: Straddle::BridgeTokenV1::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::BridgeTokenV1::ResponseType
      }
    end
  end
end
