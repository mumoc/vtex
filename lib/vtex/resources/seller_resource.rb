module Vtex
  class SellerResource < ResourceKit::Resource
    resources do
      action :seller_list, 'GET api/catalog_system/pvt/seller/list' do
        handler(200) { |response| SellerListMapping.extract_collection(response.body, :read) }
      end
    end
  end
end
