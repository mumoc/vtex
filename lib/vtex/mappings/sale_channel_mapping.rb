module Vtex
  class SaleChannelMapping
    include Kartograph::DSL

    kartograph do
      mapping SaleChannel

      scoped :read do
        property :Id
        property :Name
        property :IsActive
        property :ProductClusterId
        property :CountryCode
        property :CultureInfo
        property :TimeZone
        property :CurrencyCode
        property :CurrencySymbol
        property :CurrencyLocale
        property :CurrencyFormatInfo
        property :Origin
      end
    end
  end
end
