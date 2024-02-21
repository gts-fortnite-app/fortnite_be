class CombinedItemShop
  attr_reader :final_price, :name, :bundle_image, :item_images, :type, :id

  def initialize(item)
    @final_price = item[:finalPrice]
    @name = item[:items][0][:name]
    @type = item[:items][0][:type]
    if item[:bundle]
      @bundle_image = item[:bundle][:image]
      @item_images = [item[:items][0][:images][:icon]]
    else
      @item_images = [item[:items][0][:images][:icon]]
    end
    @id = item[:items][0][:id]
  end
end