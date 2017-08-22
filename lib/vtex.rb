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
  autoload :Sku, "vtex/models/product_variation/sku"

  # Resources
  autoload :ProductResource, "vtex/resources/product_resource"
  autoload :CategoryAndBrandResource, "vtex/resources/category_and_brand_resource"

  # Mappings
  autoload :ProductMapping, "vtex/mappings/product_mapping"
  autoload :CategoryMapping, "vtex/mappings/category_mapping"
  autoload :BrandMapping, "vtex/mappings/brand_mapping"
  autoload :ProductVariationMapping, "vtex/mappings/product_variation_mapping"
  autoload :SkuMapping, "vtex/mappings/product_variation/sku_mapping"
end
