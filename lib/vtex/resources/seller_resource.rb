module Vtex
  class SellerResource < ResourceKit::Resource
    resources do
      action :seller_list, 'GET api/catalog_system/pvt/seller/list' do
        handler(200) { |response| SellerMapping.extract_collection(response.body, :read) }
      end

      action :get_seller, 'GET /api/catalog_system/pvt/seller/:seller_id' do
        handler(200) { |response| SellerMapping.extract_single(response.body, :read) }
      end
    end
  end
end
