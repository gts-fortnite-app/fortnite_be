class CombinedItemShopSerializer
  include JSONAPI::Serializer
  attributes :final_price, :name, :image, :type
end