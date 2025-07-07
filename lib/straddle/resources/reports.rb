# frozen_string_literal: true

module Straddle
  module Resources
    class Reports
      # @overload create_total_customers_by_status(correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param correlation_id [String] Optional client generated identifier to trace and debug a series of requests.
      #
      # @param request_id [String] Optional client generated identifier to trace and debug a request.
      #
      # @param straddle_account_id [String] For use by platforms to specify an account id and set scope of a request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ReportCreateTotalCustomersByStatusResponse]
      #
      # @see Straddle::Models::ReportCreateTotalCustomersByStatusParams
      def create_total_customers_by_status(params = {})
        parsed, options = Straddle::ReportCreateTotalCustomersByStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/reports/total_customers_by_status",
          headers: parsed.transform_keys(
            correlation_id: "correlation-id",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          ),
          model: Straddle::Models::ReportCreateTotalCustomersByStatusResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
