module Vtex
  class AutoCompleteMapping
    include Kartograph::DSL

    kartograph do
      mapping AutoComplete

      scoped :read do
        porperty :itemsReturned, prural: true, includes: [
          scoped :read do
            property :items, plural: true, include:  AutoComplete::ItemMapping
            property :thumb
            property :thumbUrl
            property :name
            property :href
            property :criteria
          end
        ]
      end
    end
  end
end


