module Vtex
  class IndexerNotificationAndAutocompleteResource < ResourceKit::Resource
    resources do
      action :change_notification, 'GET /api/catalog_system/pvt/skuseller/changenotification/:product_id' do
        handler(200) { |response| response.body }
      end
    end
  end
end
