require 'spec_helper'

RSpec.describe Vtex::SalesChannelResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#sales_channel_list" do
    it "returns a sales channel array" do
      stub_do_api('/api/catalog_system/pvt/saleschannel/list', :get).to_return(body: api_fixture('sales_channel/sales_channel_list'))
      sales = resource.sales_channel_list
      expect(sales).to match_array(Vtex::SaleChannel)
    end
  end
end
