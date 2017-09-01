module Vtex
  class SellerList < Base
    [:sellerId, :name, :email, :description, :exchangeReturnPolicy, :deliveryPolicy, :useHybridPaymentOptions, :userName, :password, :securityPrivacyPolicy, :cnpj, :cscIdentification, :archiveId, :urlLogo, :productComissionPercentage, :freightComissionPercentage, :categoryComissionPercentage, :fulfillmentEndpoint, :categorySystemEndpoint, :isActive, :merchantName, :fulfillmentSellerId, :sellerType].each do |key|
      attribute(key)
    end
  end
end
