module Vtex
  class SkuResource < ResourceKit::Resource
    resources do
      action :sku, 'GET /api/catalog_system/pvt/sku/stockkeepingunitbyid/:sku_id' do
        handler(200) { |response| SkuMapping.extract_single(response.body, :read) }
      end

      action :sku_id_by_ref_id, 'GET /api/catalog_system/pvt/sku/stockkeepingunitidbyrefid/:ref_id' do
        handler(200) { |response| response.body }
      end

      action :sku_by_ean, 'GET /api/catalog_system/pvt/sku/stockkeepingunitbyean/:ean' do
        handler(200) { |response| SkuMapping.extract_single(response.body, :read) }
      end

      action :sku_by_alternate_id, 'GET /api/catalog_system/pvt/sku/stockkeepingunitbyalternateId/:ean' do
        handler(200) { |response| SkuMapping.extract_single(response.body, :read) }
      end

      action :sku_list_by_product_id, 'GET /api/catalog_system/pvt/sku/stockkeepingunitByProductId/:product_id' do
        handler(200) { |response| Sku::SkuMapping.extract_collection(response.body, :read) }
      end
    end
  end
end
