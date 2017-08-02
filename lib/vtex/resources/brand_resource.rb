module Vtex
  class BrandResource < ResourceKit::Resource
    resources do
      action :all, 'GET api/catalog_system/pvt/brand/list' do
        handler(200) { |response| BrandMapping.extract_collection(response.body, :read) }
      end
    end
  end
end
