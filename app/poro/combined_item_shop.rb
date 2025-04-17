class CombinedItemShop
  attr_reader :final_price, :name, :image, :id, :date, :vbuck_icon

  def initialize(item)
    @date = item[:date]
    @vbuck_icon = item[:vbuckIcon]
    @final_price = item[:finalPrice]
    @name = grab_name(item)
    @image = grab_image(item)
    # @type = item[:items][0][:type]
    @id = item[:layout][:id]
  end
end


private

  def grab_name(item)
    item[:brItems]&.first&.dig(:name) ||
      item[:tracks]&.first&.dig(:title) ||
      item[:instruments]&.first&.dig(:name) ||
      item[:bundle]&.dig(:name)
  end

  def grab_image(item)
    if item 
    item[:brItems]&.first&.dig(:images, :featured) ||
    item[:brItems]&.first&.dig(:images, :icon) ||
      item[:tracks]&.first&.dig(:albumArt) ||
      item[:instruments]&.first&.dig(:images, :large) ||
      item[:bundle]&.dig(:image) ||
      "https://fortnite-api.com/images/banners/foundertier5banner2/icon.png"
    else 
      "https://fortnite-api.com/images/banners/foundertier5banner2/icon.png"
    end
  end