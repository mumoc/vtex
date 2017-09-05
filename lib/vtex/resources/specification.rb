module Vtex
  class SpecificationResource < ResourceKit::Resource
    resources do
      action :specification_by_category_id, 'GET /api/catalog_system/pub/specification/field/listByCategoryId/:category_id' do
        handler(200) { |response| SpecificationMapping.extract.collection(response.body, :read) }
      end
    end
  end
end
