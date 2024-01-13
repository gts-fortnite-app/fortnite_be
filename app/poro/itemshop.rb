class Itemshop
  attr_reader :final_price, :name, :image1, :image2, :type, :set, :bundle, :variants, :id

  def initialize(item)
    @final_price = item[:finalPrice]
    @bundle = item[:isBundle].nil? ? "None" : item[:isBundle]
    @name = item[:items][0][:name]
    @type = item[:items][0][:type]
    @set = item[:items][0][:setText].nil? ? "None" : item[:items][0][:setText]
    @image1 = item[:items][0][:images][:icon].nil? ? "None" : item[:items][0][:images][:icon][:url]
    @image2 = item[:items][0][:images][:featured].nil? ? "None" : item[:items][0][:images][:featured][:url]
    @variants = format_variants(item[:items][0][:variants]) if item[:items][0][:variants] != nil
    @id = item[:items][0][:id]
  end

  def format_variants(variants)
    variants.map do |variant|
      {
        channel: variant[:channel],
        type: variant[:type],
        tag: variant[:options][0][:tag],
        image: variant[:options][0][:image][:url]
      }
    end
  end
end