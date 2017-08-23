module Vtex
  class ProductResource < ResourceKit::Resource
    resources do
      action :product_by_id, 'GET /api/catalog_system/pvt/products/ProductGet/:id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :product_by_ref_id, 'GET /api/catalog_system/pvt/products/productgetbyrefid/:ref_id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :product_and_sku_ids, "GET /api/catalog_system/pvt/products/GetProductAndSkuIds?categoryId=:category_id&_from=:from&_to=:to" do
        handler(200) { |response| response.body }
      end
    end
  end
end

