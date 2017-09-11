module Vtex
  class SpecificationField < Base
    [:Name, :CategoryId, :FieldId, :IsActive, :IsRequired, :FieldTypeId,
     :FieldTypeName, :FieldValueId, :Description, :IsStockKeepingUnit,
     :IsFilter, :IsOnProductDetails, :Position, :IsWizard, :IsTopMenuLinkActive,
     :IsSideMenuLinkActive, :DefaultValue, :FieldGroupId, :FieldGroupName].each do |key|
      attribute(key)
    end
  end
end
