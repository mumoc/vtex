module Vtex
  class CategoryMapping
    include Kartograph::DSL

    kartograph do
      mapping Category

      property :parentId, scopes: [:read]
      property :id, scopes: [:read]
      property :name, scopes: [:read]
      property :hasChildren, scopes: [:read]
      property :url, scopes: [:read]
      property :children, scopes: [:read]
    end
  end
end
