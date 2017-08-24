require 'spec_helper'

RSpec.describe Vtex::IndexerNotificationAndAutocompleteResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "ChangeNotification" do
    it "handles a 200" do
      stub_do_api('/api/catalog_system/pvt/skuseller/changenotification/1', :get).to_return(body: "200")

      response = resource.change_notification(product_id: 1)

      expect(response).to eq("200")
    end
  end
end

