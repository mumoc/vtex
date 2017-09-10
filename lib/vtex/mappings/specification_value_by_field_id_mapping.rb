module Vtex
  class SpecificationValueByFieldIdMapping
    include Kartograph::DSL

    kartograph do
      mapping SpecificationValueByFieldId

      scoped :read do
        property :FieldValueId
        property :Value
        property :IsActive
        property :Position
      end
    end
  end
end
