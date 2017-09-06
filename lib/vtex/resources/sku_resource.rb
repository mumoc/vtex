module Vtex
  class SkuResource < ResourceKit::Resource
    resources do
      action :sku, 'GET /api/catalog_system/pvt/sku/stockkeepingunitbyid/:sku_id' do
        handler(200) { |response| SkuMapping.extract_single(response.body, :read) }
      end

      action :sku_id_by_ref_id, 'GET /api/catalog_system/pvt/sku/stockkeepingunitidbyrefid/:ref_id' do
        handler(200) { |response| response.body }
      end
    end
  end
end
