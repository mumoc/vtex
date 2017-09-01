module Vtex
  class SellerListMapping
    include Kartograph::DSL

    kartograph do
      mapping SellerList

      scoped :read do
        property :sellerId
        property :name
        property :email
        property :description
        property :exchangeReturnPolicy
        property :deliverPolicy
        property :useHybridPaymentOptions
        property :userName
        property :password
        property :securityPrivacyPolicy
        property :cnpj
        property :cscIdentification
        property :archiveId
        property :urlLogo
        property :productComissionPercentage
        property :freightComissionPercentage
        property :categoryCommisionPercentage
        property :fulfillmentEndpoint
        property :catalogSystemEndpoint
        property :isActive
        property :merchantName
        property :fulfillmentSellerId
        property :sellerType
      end
    end
  end
end
