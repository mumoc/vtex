module Vtex
  class AutoComplete < Base
    [:itemsReturned].each do |key|
      attribute(key)
    end
  end
end
