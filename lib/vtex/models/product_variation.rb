module Vtex
  class ProductVariation < Base
    [:productId, :name, :salesChannel, :displayMode, :dimensions,
    :dimensionsInputType, :dimensionsMap, :skus].each do |key|
      attribute(key)
    end
  end
end