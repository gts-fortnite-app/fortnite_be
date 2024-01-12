class ItemShopFacade
  def self.custom_itemshop
    items = ItemShopService.get_itemshop
    # binding.pry
    parse_itemshop(items)
  end

  def self.parse_itemshop(items)
    # require 'pry'; binding.pry
    featured_items = items[:data][:featured]
    featured_items.map do |item|
      Itemshop.new(item)
    end
  end
end