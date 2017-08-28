module Vtex
  module ProductVariations
    class SkuMapping
      include Kartograph::DSL

      kartograph do
        mapping ProductVariations::Sku

        scoped :read do
          property :sku
          property :skuname
          property :dimensions
          property :available
          property :availablequantity
          property :cacheVersionUsedToCallCheckout
          property :listPriceFormated
          property :listPrice
          property :taxFormated
          property :taxAsInt
          property :bestPriceFormated
          property :bestPrice
          property :installments
          property :installmentsValue
          property :installmentsInsterestRate
          property :image
          property :sellerId
          property :seller
          property :measures
          property :unitMultiplier
          property :rewardValue
        end
      end
    end
  end
end
