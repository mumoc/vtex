module Vtex
  module ProductVariations
    class Sku < Base
      [:sku, :skuname, :dimensions, :available, :availablequantity, 
      :cacheVersionUsedToCallCheckout, :listPriceFormated, :listPrice, 
      :taxFormated, :taxAsInt, :bestPriceFormated, :bestPrice, :installments, 
      :installmentsValue, :installmentsInsterestRate, :image, :sellerId, 
      :seller, :measures, :unitMultiplier, :rewardValue].each do |key|
        attribute(key)
      end
    end
  end
end
