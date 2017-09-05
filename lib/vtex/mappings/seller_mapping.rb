module Vtex
  class SellerMapping
    include Kartograph::DSL

    kartograph do
      mapping Seller

      scoped :read do
        property :SellerId
        property :Name
        property :Email
        property :Description
        property :ExchangeReturnPolicy
        property :DeliveryPolicy
        property :UseHybridPaymentOptions
        property :UserName
        property :Password
        property :SecurityPrivacyPolicy
        property :CNPJ
        property :CSCIdentification
        property :ArchiveId
        property :UrlLogo
        property :ProductCommissionPercentage
        property :FreightCommissionPercentage
        property :CategoryCommissionPercentage
        property :FulfillmentEndpoint
        property :CatalogSystemEndpoint
        property :IsActive
        property :MerchantName
        property :FulfillmentSellerId
        property :SellerType
      end
    end
  end
end
