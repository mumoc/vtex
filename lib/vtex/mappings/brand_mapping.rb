module Vtex
  class BrandMapping
    include Kartograph::DSL

    kartograph do
      mapping Brand

      property :id, scopes: [:read]
      property :name, scopes: [:read]
      property :isActive, scopes: [:read]
    end
  end
end
