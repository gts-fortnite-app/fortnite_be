class ItemShopSerializer
  include JSONAPI::Serializer
  attributes :id, :final_price, :name, :image1, :image2, :type, :set, :bundle
end