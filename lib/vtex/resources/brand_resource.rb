module Vtex
  class BrandResource < ResourceKit::Resource
    resources do
      action :all, 'GET api/catalog_system/pvt/brand/list' do
        handler(200) { |body| BrandMapping.extract_collection(body, :read) }
      end
    end
  end
end
