module Vtex
  class ProductVariationMapping
    include Kartograph::DSL

    kartograph do
      mapping ProductVariation

      scoped :read do
        property :productId
        property :name
        property :salesChannel
        property :displayMode
        property :dimensions, plural: true
        property :dimensionsInputType
        property :dimensionsMap
        property :skus, plural: true, include: ProductVariations::SkuMapping
      end
    end
  end
end
