module Vtex
  class SpecificationValueByFieldIdResource < ResourceKit::ResourceKit
    resources do
      action :specification_value_by_field_id, 'GET api/catalog_system/pub/specification/fieldvalue/:field_id' do
        handler(200) { |response| SpecificationValueByFieldIdMapping.extract_collection(response.body, :read) }
      end
    end
  end
end
