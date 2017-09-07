module Vtex
  class SpecificationValueByFieldId < Base
    [:FieldValueId, :Value, :IsActive, :Position].each do |key|
      attribute(key)
    end
  end
end
