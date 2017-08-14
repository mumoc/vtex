module Vtex
  class Brand < Base
    [:id, :name, :isActive].each do |key|
      attribute(key)
    end
  end
end
