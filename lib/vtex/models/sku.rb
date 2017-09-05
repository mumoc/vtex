module Vtex
  class Sku < Base
    [:Id, :ProductId, :NameComplete, :ProductName, :ProductDescription, :TaxCode,
     :SkuName, :IsActive, :IsTransported, :IsInventoried, :IsGiftCardRecharge,
     :ImageUrl, :DetailUrl, :CSCIdentification, :BrandId, :BrandName, :Dimension,
     :RealDimension, :ManufacturerCode, :IsKit, :KitItems, :Services, :Categories,
     :Attachments, :Collections, :SkuSellers, :SalesChannels, :Images, :SkuSpecifications,
     :ProductSpecifications, :ProductClustersIds, :ProductCategoryIds, :ProductGlobalCategoryId,
     :ProductCategories, :CommercialConditionId, :RewardValue, :AlternateIds, :AlternateIdValues,
     :EstimatedDateArrival, :MeasurementUnit, :UnitMultiplier, :InformationSource,
     :ModalType].each do |key|
      attribute(key)
    end
  end
end
