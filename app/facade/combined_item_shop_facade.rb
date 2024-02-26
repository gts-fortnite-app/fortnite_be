class CombinedItemShopFacade
  def self.custom_itemshop
    items = CombinedItemShopService.get_itemshop
    parse_itemshop(items)
  end

  def self.parse_itemshop(items)
    date = items[:data][:date]
    vbuck_icon = items[:data][:vbuckIcon]
    featured_items = items[:data][:featured][:entries]
    featured_items.map do |item|
      item_with_data_and_icon = item.merge(date: date, vbuckIcon: vbuck_icon)
      CombinedItemShop.new(item_with_data_and_icon)
    end
  end
end