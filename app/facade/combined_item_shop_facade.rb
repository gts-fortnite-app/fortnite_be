class CombinedItemShopFacade
  def self.custom_itemshop
    items = CombinedItemShopService.get_itemshop
    parse_itemshop(items)
  end

  def self.parse_itemshop(items)
    featured_items = items[:data][:featured][:entries]
    featured_items.map do |item|
      CombinedItemShop.new(item)
    end
  end
end