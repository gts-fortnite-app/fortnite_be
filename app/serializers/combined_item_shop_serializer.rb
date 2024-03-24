class CombinedItemShopSerializer
  include JSONAPI::Serializer
  attributes :final_price, :name, :image, :date, :vbuck_icon
end