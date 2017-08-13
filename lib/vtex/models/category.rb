module Vtex
  class Category < Base
    [:parentId, :id, :name, :hasChildren, :url, :children].each do |key|
      attribute(key)
    end
  end
end
