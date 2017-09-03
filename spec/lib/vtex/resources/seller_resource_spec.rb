require 'spec_helper'

RSpec.describe Vtex::SellerResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#seller_list" do
    it "returns a seller list array" do
      stub_do_api('/api/catalog_system/pvt/seller/list', :get).to_return(body: api_fixture('seller/seller_list'))
      list = resource.seller_list
      expect(list).to match_array(Vtex::SellerList)
    end
  end
end
