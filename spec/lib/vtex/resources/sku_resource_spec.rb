require 'spec_helper'

RSpec.describe Vtex::SkuResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#sku" do
    it "returns a single sku" do
      stub_do_api('/api/catalog_system/pvt/sku/stockkeepingunitbyid/1', :get).to_return(body: api_fixture('sku/sku'))
      sku = resource.sku(sku_id: 1)
      expect(sku).to be_kind_of(Vtex::Sku)
    end
  end

  describe "#sku_id_by_ref_id" do
    it "returns a sku id" do
      stub_do_api('/api/catalog_system/pvt/sku/stockkeepingunitidbyrefid/playera', :get).to_return(body: "2001773", status: 200)
      sku = resource.sku_id_by_ref_id(ref_id: 'playera')
      expect(sku).to be_a(String)
    end
  end

  describe "#sku_by_ean" do
    it "returns a sku object" do
      stub_do_api('/api/catalog_system/pvt/sku/stockkeepingunitbyean/1234567890', :get).to_return(body: api_fixture('sku/sku'))
      sku = resource.sku_by_ean(ean: 1234567890)
      expect(sku).to be_kind_of(Vtex::Sku)
    end
  end

  describe "#sku_by_alternate_id" do
    it "returns a sku object" do
      stub_do_api('/api/catalog_system/pvt/sku/stockkeepingunitbyalternateId/1234567890', :get).to_return(body: api_fixture('sku/sku'))
      sku = resource.sku_by_alternate_id(ean: 1234567890)
      expect(sku).to be_kind_of(Vtex::Sku)
    end
  end

  describe "#sku_list_by_product_id" do
    it "returns a list of skus objects" do
      stub_do_api('/api/catalog_system/pvt/sku/stockkeepingunitByProductId/1', :get).to_return(body: api_fixture('sku/sku_list_by_product_id'))
      skus = resource.sku_list_by_product_id(product_id: 1)
      expect(skus).to match_array(Vtex::SkuList::Sku)
    end
  end
end
