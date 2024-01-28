class CombinedItemShop
  attr_reader :final_price, :name, :image, :type, :set, :bundle, :id

  def initialize(item)
    # binding.pry
    @final_price = item[:finalPrice]
    @bundle = item[:isBundle].nil? ? "None" : item[:isBundle]
    @name = item[:items][0][:name]
    @type = item[:items][0][:type]
    @set = item[:items][0][:setText].nil? ? "None" : item[:items][0][:setText]
    @image = item[:bundle].nil? || item[:bundle][:image].nil? ? "None" : item[:bundle][:image]
    @id = item[:items][0][:id]
  end
end