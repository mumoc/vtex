module Vtex
  module AutoComplete
    class Item < Base
      [:itemId, :name, :nameComplete, :imageUrl].each do |key|
        attribute(key)
      end
    end
  end
end
