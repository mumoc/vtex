module Vtex
  class SpecificationFieldMapping
    include Kartograph::DSL

    kartograph do
      mapping SpecificationField

      scoped :read do
        property :Name
        property :CategoryId
        property :FieldId
        property :IsActive
        property :IsRequired
        property :FieldTypeId
        property :FieldTypeName
        property :FieldValueId
        property :Description
        property :IsStockKeepingUnit
        property :IsFilter
        property :IsOnProductDetails
        property :Position
        property :IsWizard
        property :IsTopMenuLinkActive
        property :IsSideMenuLinkActive
        property :DefaultValue
        property :FieldGroupId
        property :FieldGroupName
      end
    end
  end
end
