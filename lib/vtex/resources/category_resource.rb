module Vtex
  class CategoryResource < ResourceKit::Resource
    resources do
      action :by_id, 'GET /api/catalog_system/pvt/category/:id' do
        handler(200) { |response| CategoryMapping.extract_single(response.body, :read) }
      end
    end
  end
end

