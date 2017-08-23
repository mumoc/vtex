module Vtex
  class ProductAndSkuIdsMapping
    include Kartograph::DSL

    kartograph do
      scoped :read do
        property :data
        property :range
      end
    end
  end
end
