module Vtex
  class SalesChannelResource < ResourceKit::Resource
    resources do
      action :sales_channel_list, 'GET /api/catalog_system/pvt/saleschannel/list' do
        handler(200) { |response| SaleChannelMapping.extract_collection(response.body, :read) }
      end
    end
  end
end
