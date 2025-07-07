# frozen_string_literal: true

require_relative "../test_helper"

class Straddle::Test::Resources::ReportsTest < Straddle::Test::ResourceTest
  def test_create_total_customers_by_status
    response = @straddle.reports.create_total_customers_by_status

    assert_pattern do
      response => Straddle::Models::ReportCreateTotalCustomersByStatusResponse
    end

    assert_pattern do
      response => {
        data: Straddle::Models::ReportCreateTotalCustomersByStatusResponse::Data,
        meta: Straddle::ResponseMetadata,
        response_type: Straddle::Models::ReportCreateTotalCustomersByStatusResponse::ResponseType
      }
    end
  end
end
