class CombinedItemShopSerializer
  include JSONAPI::Serializer
  attributes :final_price, :name, :bundle_image, :item_images, :type
end