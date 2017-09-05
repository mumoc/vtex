module Vtex
  class IndexerNotificationAndAutocompleteResource < ResourceKit::Resource
    resources do
      action :change_notification, 'GET /api/catalog_system/pvt/skuseller/changenotification/:product_id' do
        handler(200) { |response| response.body }
      end

      action :indexed_info, 'GET /api/catalog_system/pvt/products/GetIndexedInfo/2000005' do
        handler(200) { |response| response.body }
      end

      action :auto_complete, 'GET /buscaautocomplete/?productNameContains=:product_name' do
        handler(200) { |response| response.body }
      end
    end
  end
end
