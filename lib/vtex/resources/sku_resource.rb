module Vtex
  class SkuResource < ResourceKit::Resource
    resources do
      action :sku, 'GET /api/catalog_system/pvt/sku/stockkeepingunitbyid/:sku_id' do
        handler(200) { |response| SkuMapping.extract_single(response.body, :read) }
      end
    end
  end
end
