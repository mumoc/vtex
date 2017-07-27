module Vtex
  class Product < Base
    [:Id, :Name, :DepartmentId, :CategoryId, :BrandId, :LinkId, :RefId, :IsVisible,
     :Description, :DescriptionShort, :ReleaseDate, :KeyWords, :Title, :IsActive,
     :TaxCode, :MetaTagDescription, :SupplierId, :ShowWithoutStock, :ListStoreId,
     :AdWordsRemarketingCode, :LomadeeCampaignCode].each do |key|
      attribute(key)
    end
  end
end
