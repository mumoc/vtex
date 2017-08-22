module Vtex
  class IndexerNotificationAndAutocompleteResource < ResourceKit::Resource
    resource do
      action :change_notification, 'GET /api/catalog_system/pvt/skuseller/changenotification/{{productId}}' do
        handler(200) {|response| ProductMapping.extract_single(response.body, :read) }
    end
  end
end


