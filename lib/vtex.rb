require "vtex/version"
require "active_support/all"
require "resource_kit"
require "kartograph"

module Vtex
  autoload :Client, "vtex/client"

  # Models
  autoload :Base, "vtex/models/base"
  autoload :Product, "vtex/models/product"
  autoload :Category, "vtex/models/category"
  autoload :Brand, "vtex/models/brand"
  autoload :ProductVariation, "vtex/models/product_variation"
  autoload :SaleChannel, "vtex/models/sale_channel"
  autoload :Seller, "vtex/models/seller"
  autoload :Sku, "vtex/models/sku"
  autoload :Specification, "vtex/models/specification"


  # Resources
  autoload :ProductResource, "vtex/resources/product_resource"
  autoload :CategoryAndBrandResource, "vtex/resources/category_and_brand_resource"
  autoload :IndexerNotificationAndAutocompleteResource, "vtex/resources/indexer_notification_and_autocomplete_resource"
  autoload :SalesChannelResource, "vtex/resources/sales_channel_resource"
  autoload :SellerResource, "vtex/resources/seller_resource"
  autoload :SkuResource, "vtex/resources/sku_resource"
  autoload :SpecificationResource,"vtex/resources/specification_resource"

  # Mappings
  autoload :ProductMapping, "vtex/mappings/product_mapping"
  autoload :CategoryMapping, "vtex/mappings/category_mapping"
  autoload :BrandMapping, "vtex/mappings/brand_mapping"
  autoload :ProductVariationMapping, "vtex/mappings/product_variation_mapping"
  autoload :SaleChannelMapping, "vtex/mappings/sale_channel_mapping"
  autoload :SellerMapping, "vtex/mappings/seller_mapping"
  autoload :SkuMapping, "vtex/mappings/sku_mapping"
  autoload :SpecificationMapping, "vtex/mappings/specification_mapping"

  module ProductVariations
    autoload :Sku, "vtex/models/product_variations/sku"
    autoload :SkuMapping, "vtex/mappings/product_variations/sku_mapping"
  end

  module SkuList
    autoload :Sku, "vtex/models/sku/sku"
    autoload :SkuMapping, "vtex/mappings/sku/sku_mapping"
  end
end
