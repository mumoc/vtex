module Vtex
  class SkuMapping
    include Kartograph::DSL

    kartograph do
      mapping Sku

      scoped :read do
        property :Id
        property :ProductId
        property :NameComplete
        property :ProductName
        property :ProductDescription
        property :TaxCode
        property :SkuName
        property :IsActive
        property :IsTransported
        property :IsInventoried
        property :IsGiftCardRecharge
        property :ImageUrl
        property :DetailUrl
        property :CSCIdentification
        property :BrandId
        property :BrandName
        property :Dimension
        property :RealDimension
        property :ManufacturerCode
        property :IsKit
        property :KitItems, plural: true
        property :Services, plural: true
        property :Categories, plural: true
        property :Attachments, plural: true
        property :Collections, plural: true
        property :SkuSellers, plural: true
        property :SalesChannels, plural: true
        property :Images, plural: true
        property :SkuSpecifications, plural: true
        property :ProductSpecifications, plural: true
        property :ProductClustersIds
        property :ProductCategoryIds
        property :ProductGlobalCategoryId
        property :ProductCategories
        property :CommercialConditionId
        property :RewardValue
        property :AlternateIds
        property :AlternateIdValues, plural: true
        property :EstimatedDateArrival
        property :MeasurementUnit
        property :UnitMultiplier
        property :InformationSource
        property :ModalType
      end
    end
  end
end
