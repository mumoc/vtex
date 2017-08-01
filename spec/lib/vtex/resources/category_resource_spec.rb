require 'spec_helper'

RSpec.describe Vtex::CategoryResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#by_id" do
    it "returns a single category" do
      stub_do_api('/api/catalog_system/pvt/category/1', :get).to_return(body: api_fixture('categories/by_id'))
      category = resource.by_id(id: 1)
      expect(category).to be_kind_of(Vtex::Category)
    end
  end
end

