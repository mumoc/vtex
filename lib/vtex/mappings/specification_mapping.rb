module Vtex
  class SpecificationMapping
    include Kartograph::DSL

    kartograph do
      mapping Specification

      scoped :read do
        property :Name
        property :CategoryId
        property :FieldId
        property :IsActive
        property :IsStockKeepingUnit
      end
    end
  end
end
