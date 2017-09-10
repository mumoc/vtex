module Vtex
  class SpecificationResource < ResourceKit::Resource
    resources do
      action :specification_by_category_id, 'GET /api/catalog_system/pub/specification/field/listByCategoryId/:category_id' do
        handler(200) { |response| SpecificationMapping.extract_collection(response.body, :read) }
      end

      action :specification_tree_by_category_id, 'GET /api/catalog_system/pub/specification/field/listTreeByCategoryId/:category_id' do
        handler(200) { |response| SpecificationMapping.extract_collection(response.body, :read) }
      end

      action :specification_field, 'GET /api/catalog_system/pub/specification/fieldGet/:field_id' do
        handler(200) { |response| SpecificationFieldMapping.extract_single(response.body, :read) }
      end
    end
  end
end
