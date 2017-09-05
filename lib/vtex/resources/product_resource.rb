module Vtex
  class ProductResource < ResourceKit::Resource
    resources do
      action :product_by_id, 'GET /api/catalog_system/pvt/products/ProductGet/:id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :product_by_ref_id, 'GET /api/catalog_system/pvt/products/productgetbyrefid/:ref_id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end

      action :product_variations, 'GET /api/catalog_system/pub/products/variations/:product_id' do
        handler(200) { |response| ProductVariationMapping.extract_single(response.body, :read) }
      end

      action :review_rate_product, 'GET /api/addon/pvt/review/GetProductRate/2001158' do
        handler(200) { |response| response.body }
      end
    end
  end
end

