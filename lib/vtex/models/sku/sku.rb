module Vtex
  module SkuList
    class Sku < Base
      [:IsPersisted, :IsRemoved, :Id, :ProductId, :IsActive, :Name, :Height,
       :RealHeight, :Width, :RealWidth, :Length, :RealLength, :WeightKg,
       :RealWeightKg, :ModalId, :RefId, :CubicWeight, :IsKit, :IsDynamicKit,
       :InternalNote, :DateUpdated, :RewardValue, :CommercialConditionId,
       :EstimatedDateArrival, :FlagKitItensSellApart, :ManufacturerCode,
       :ReferenceStockKeepingUnitId, :Position, :EditionSkuId, :ApprovedAdminId,
       :EditionAdminId, :ActivateIfPossible, :SupplierCode, :MeasurementUnit,
       :UnitMultiplier, :IsInventoried, :IsTransported, :IsGiftCardRecharge,
       :ModalType].each do |key|
        attribute(key)
      end
    end
  end
end
