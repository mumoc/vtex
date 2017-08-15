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
end

