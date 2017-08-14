module Vtex
  class CategoryAndBrandResource < ResourceKit::Resource
    resources do
      action :category, 'GET /api/catalog_system/pvt/category/:id' do
        handler(200) { |response| CategoryMapping.extract_single(response.body, :read) }
      end

      action :category_tree, 'GET /api/catalog_system/pub/category/tree/:levels/' do
        handler(200) { |response| CategoryMapping.extract_collection(response.body, :read) }
      end

      action :brand, 'GET /api/catalog_system/pvt/brand/list' do
        handler(200) { |response| BrandMapping.extract_collection(response.body, :read) }
      end
    end
  end
end

