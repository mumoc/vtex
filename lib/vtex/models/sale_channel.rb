module Vtex
  class SaleChannel < Base
    [:Id, :Name, :IsActive, :ProductClusterId, :CountryCode, :CultureInfo, :TimeZone,
     :CurrencyCode, :CurrencySymbol, :CurrencyLocale, :CurrencyFormatInfo,
     :Origin].each do |key|
      attribute(key)
    end
  end
end
