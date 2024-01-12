class Itemshop
  attr_reader :final_price, :name, :image1, :image2, :type, :set, :bundle, :id

  def initialize(item)
    @id = nil
    @final_price = item[:finalPrice]
    @bundle = item[:isBundle].nil? ? "None" : item[:isBundle]
    @name = item[:items][0][:name]
    @type = item[:items][0][:type]
    @set = item[:items][0][:setText].nil? ? "None" : item[:items][0][:setText]
    @image1 = item[:items][0][:images][:icon].nil? ? "None" : item[:items][0][:images][:icon][:url]
    @image2 = item[:items][0][:images][:featured].nil? ? "None" : item[:items][0][:images][:featured][:url]
    # @variants = item[:items][0][:variants].nil? ? "None" : item[:items][0][:variants]
  end
end