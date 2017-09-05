module Vtex
  class Seller < Base
    [:SellerId, :Name, :Email, :Description, :ExchangeReturnPolicy,
     :DeliveryPolicy, :UseHybridPaymentOptions, :UserName, :Password,
     :SecurityPrivacyPolicy, :CNPJ, :CSCIdentification, :ArchiveId, :UrlLogo,
     :ProductCommissionPercentage, :FreightCommissionPercentage,
     :CategoryCommissionPercentage, :FulfillmentEndpoint,
     :CatalogSystemEndpoint, :IsActive, :MerchantName,
     :FulfillmentSellerId, :SellerType].each do |key|
      attribute(key)
    end
  end
end
