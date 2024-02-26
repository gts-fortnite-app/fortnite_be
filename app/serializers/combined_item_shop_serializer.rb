class CombinedItemShopSerializer
  include JSONAPI::Serializer
  attributes :final_price, :name, :image, :type, :date, :vbuck_icon
end