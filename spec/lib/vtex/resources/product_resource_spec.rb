require 'spec_helper'

RSpec.describe Vtex::ProductResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#product_by_id" do
    it "returns a single product" do
      stub_do_api('/api/catalog_system/pvt/products/ProductGet/1', :get).to_return(body: api_fixture('product/product_by_id'))
      product = resource.product_by_id(id: 1)
      expect(product).to be_kind_of(Vtex::Product)
    end
  end

  describe "#product_by_ref_id" do
    it "returns a single product" do
      stub_do_api('/api/catalog_system/pvt/products/productgetbyrefid/1', :get).to_return(body: api_fixture('product/product_by_id'))
      product = resource.product_by_ref_id(ref_id: 1)
      expect(product).to be_kind_of(Vtex::Product)
    end
  end
  
  describe "#product_variations" do
    it "returns a single product with specifications" do
      stub_do_api('/api/catalog_system/pub/products/variations/5', :get).to_return(body: api_fixture('product/product_variations'))
      product = resource.product_variations(product_id: 5)
      expect(product).to be_kind_of(Vtex::ProductVariation)
    end
  end
  
  describe "#product_and_sku_ids" do
    it "returns data ids and range about product and skus" do
      stub_do_api('/api/catalog_system/pvt/products/GetProductAndSkuIds?categoryId=1&_from=1&_to=10', :get).to_return(body: api_fixture('product/product_and_sku_ids'))
      data = resource.product_and_sku_ids(category_id: 1, from: 1, to: 10)
      expect(data).to be_kind_of(Vtex::Product)
    end
  end
end

