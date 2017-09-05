require 'spec_helper'

RSpec.describe Vtex::SellerResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#seller_list" do
    it "returns a seller list array" do
      stub_do_api('/api/catalog_system/pvt/seller/list', :get).to_return(body: api_fixture('seller/seller_list'))
      list = resource.seller_list
      expect(list).to match_array(Vtex::Seller)
    end
  end

  describe "#get_seller" do
    it "returns a seller object by id" do
      stub_do_api('/api/catalog_system/pvt/seller/1', :get).to_return(body: api_fixture('seller/get_seller'))
      list = resource.get_seller(seller_id: 1)
      expect(list).to be_kind_of(Vtex::Seller)
    end
  end
end
