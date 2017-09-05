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
        property :KitItems
        property :Services
        property :Categories
        property :Attachments
        property :Collections
        property :SkuSellers
        property :SalesChannels
        property :Images
        property :SkuSpecifications
        property :ProductSpecifications
        property :ProductClustersIds
        property :ProductCategoryIds
        property :ProductGlobalCategoryId
        property :ProductCategories
        property :CommercialConditionId
        property :RewardValue
        property :AlternateIds
        property :AlternateIdValues
        property :EstimatedDateArrival
        property :MeasurementUnit
        property :UnitMultiplier
        property :InformationSource
        property :ModalType
      end
    end
  end
end
