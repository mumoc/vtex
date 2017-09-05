module Vtex
  class SellerMapping
    include Kartograph::DSL

    kartograph do
      mapping Seller

      scoped :read do
        property :sellerId
        property :name
        property :email
        property :description
        property :exchangeReturnPolicy
        property :deliveryPolicy
        property :useHybridPaymentOptions
        property :userName
        property :password
        property :securityPrivacyPolicy
        property :cnpj
        property :cscIdentification
        property :archiveId
        property :urlLogo
        property :productCommissionPercentage
        property :freightCommissionPercentage
        property :categoryCommissionPercentage
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
