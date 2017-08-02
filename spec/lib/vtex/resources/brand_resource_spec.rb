require 'spec_helper'

RSpec.describe Vtex::BrandResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#all" do
    it "returns a collection brand" do
      stub_do_api('/api/catalog_system/pvt/brand/list', :get).to_return(body: api_fixture('brands/all'))
      brand = resource.all
      expect(brand).to eq(brand)
    end
  end
end
