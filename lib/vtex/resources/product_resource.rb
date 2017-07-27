module Vtex
  class ProductResource < ResourceKit::Resource
    resources do
      action :by_id, 'GET /api/catalog_system/pvt/products/ProductGet/:id' do
        handler(200) { |response| ProductMapping.extract_single(response.body, :read) }
      end
    end
  end
end

