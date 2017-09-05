module Vtex
  module AutoComplete
    class ItemMapping
      include Kartograph::DSL

      kartograph do
        mapping AutoComplete::Item

        scoped :read do
          property :itemId
          property :name
          property :nameComplete
          property :imageUrl
        end
      end
    end
  end
end

