require 'rails_helper'

RSpec.describe "Item Shop Facade" do
  context 'instance methods', :vcr do
    scenario '#custom_itemshop' do
    items = CombinedItemShopFacade.custom_itemshop
    # require 'pry'; binding.pry

      items.each do |item|
        expect(item).to respond_to(:final_price).or respond_to(:name)
          .or respond_to(:image)
          # .or respond_to(:type)
          .or respond_to(:date)
          .or respond_to(:vbuck_icon)

        expect(item.final_price).to be_a(Integer)
        expect(item.name).to be_a(String)
        expect(item.image).to be_a(String)
        # expect(item.type).to be_a(Hash)
        expect(item.date).to be_a(String)
        expect(item.vbuck_icon).to be_a(String)
      end
    end
  end
end
