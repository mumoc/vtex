require 'spec_helper'

RSpec.describe Vtex::SpecificationResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#specification_by_category_id" do
    it "returns a list of category" do
      stub_do_api('/api/catalog_system/pub/specification/field/listByCategoryId/8', :get).to_return(body: api_fixture('specification/specification_by_category_id'))
      response = resource.specification_by_category_id(category_id: 8)
      expect(response.first).to be_kind_of(Vtex::Specification)
    end
  end

  describe "#specification_tree_by_category_id" do
    it "returns a list of category" do
      stub_do_api('/api/catalog_system/pub/specification/field/listTreeByCategoryId/8', :get).to_return(body: api_fixture('specification/specification_by_category_id'))
      response = resource.specification_tree_by_category_id(category_id: 8)
      expect(response.first).to be_kind_of(Vtex::Specification)
    end
  end
end
