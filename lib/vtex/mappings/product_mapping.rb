module Vtex
  class ProductMapping
    include Kartograph::DSL

    kartograph do
      mapping Product

      property :Id, scopes: [:read]
      property :Name, scopes: [:read]
      property :DepartmentId, scopes: [:read]
      property :CategoryId, scopes: [:read]
      property :BrandId, scopes: [:read]
      property :LinkId, scopes: [:read]
      property :RefId, scopes: [:read]
      property :IsVisible, scopes: [:read]
      property :Description, scopes: [:read]
      property :DescriptionShort, scopes: [:read]
      property :ReleaseDate, scopes: [:read]
      property :KeyWords, scopes: [:read]
      property :Title, scopes: [:read]
      property :IsActive, scopes: [:read]
      property :TaxCode, scopes: [:read]
      property :MetaTagDescription, scopes: [:read]
      property :SupplierId, scopes: [:read]
      property :ShowWithoutStock, scopes: [:read]
      property :ListStoreId, scopes: [:read]
      property :AdWordsRemarketingCode, scopes: [:read]
      property :LomadeeCampaignCode, scopes: [:read]
    end
  end
end
