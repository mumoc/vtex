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
  autoload :SellerList, "vtex/models/seller_list"

  # Resources
  autoload :ProductResource, "vtex/resources/product_resource"
  autoload :CategoryAndBrandResource, "vtex/resources/category_and_brand_resource"
  autoload :IndexerNotificationAndAutocompleteResource, "vtex/resources/indexer_notification_and_autocomplete_resource"
  autoload :Seller, "vtex/resources/seller_resource"

  # Mappings
  autoload :ProductMapping, "vtex/mappings/product_mapping"
  autoload :CategoryMapping, "vtex/mappings/category_mapping"
  autoload :BrandMapping, "vtex/mappings/brand_mapping"
  autoload :ProductVariationMapping, "vtex/mappings/product_variation_mapping"
  autoload :SellerListMapping, "vtex/mappings/seller_list_mapping"

  module ProductVariations
    autoload :Sku, "vtex/models/product_variations/sku"
    autoload :SkuMapping, "vtex/mappings/product_variations/sku_mapping"
  end
end
