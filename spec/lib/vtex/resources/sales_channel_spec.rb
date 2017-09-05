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

  describe "#sales_channel_by_id" do
    it "returns a single sales channel" do
      stub_do_api('/api/catalog_system/pub/saleschannel/1', :get).to_return(body: api_fixture('sales_channel/sales_channel_by_id'))
      sales = resource.sales_channel_by_id(sales_channel_id: 1)
      expect(sales).to be_kind_of(Vtex::SaleChannel)
    end
  end
end
