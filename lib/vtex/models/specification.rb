module Vtex
  class Specification < Base
    [:Name, :CategoryId, :FieldId, :IsActive, :IsStockKeepingUnit].each do |key|
      attribute(key)
    end
  end
end
