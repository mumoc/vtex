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

  describe "#review_rate_product" do
    it "returns rate product" do
      stub_do_api('/api/addon/pvt/review/GetProductRate/2001158', :get).to_return(body: "0", status: 200)
      rate = resource.review_rate_product().to_i
      expect(rate).to be_a(Integer)
    end
  end
end

