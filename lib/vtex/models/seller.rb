module Vtex
  class Seller < Base
    [:sellerId, :name, :email, :description, :exchangeReturnPolicy,
     :deliveryPolicy, :useHybridPaymentOptions, :userName, :password,
     :securityPrivacyPolicy, :cnpj, :cscIdentification, :archiveId, :urlLogo,
     :productCommissionPercentage, :freightCommissionPercentage,
     :categoryCommissionPercentage, :fulfillmentEndpoint,
     :catalogSystemEndpoint, :isActive, :merchantName,
     :fulfillmentSellerId, :sellerType].each do |key|
      attribute(key)
    end
  end
end
