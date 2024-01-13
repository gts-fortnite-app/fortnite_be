class ItemShopSerializer
  include JSONAPI::Serializer
  attributes :final_price, :name, :image1, :image2, :type, :set, :bundle, :variants
end