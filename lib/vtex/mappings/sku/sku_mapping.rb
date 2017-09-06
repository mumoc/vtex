module Vtex
  module SkuList
    class SkuMapping
      include Kartograph::DSL

      kartograph do
        mapping SkuList::Sku

        scoped :read do
          property :IsPersisted
          property :IsRemoved
          property :Id
          property :ProductId
          property :IsActive
          property :Name
          property :Height
          property :RealHeight
          property :Width
          property :RealWidth
          property :Length
          property :RealLength
          property :WeightKg
          property :RealWeightKg
          property :ModalId
          property :RefId
          property :CubicWeight
          property :IsKit
          property :IsDynamicKit
          property :InternalNote
          property :DateUpdated
          property :RewardValue
          property :CommercialConditionId
          property :EstimatedDateArrival
          property :FlagKitItensSellApart
          property :ManufacturerCode
          property :ReferenceStockKeepingUnitId
          property :Position
          property :EditionSkuId
          property :ApprovedAdminId
          property :EditionAdminId
          property :ActivateIfPossible
          property :SupplierCode
          property :MeasurementUnit
          property :UnitMultiplier
          property :IsInventoried
          property :IsTransported
          property :IsGiftCardRecharge
          property :ModalType
        end
      end
    end
  end
end
