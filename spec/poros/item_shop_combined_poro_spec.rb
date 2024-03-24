require 'rails_helper'

RSpec.describe 'Item Shop' do
  describe '#item_shop_combined' do
    it 'has attributes' do
      item_data = {
        date: 'this is a date 324234',
        vbuckIcon: 'supercoolvbuckimage.png',
        finalPrice: 3000,
        items: [
          {
            name: 'Chromatica Armor Gaga',
            images: {
              icon: "supercoolicon"
            },
            id: 'this is a id'
          }
        ],
        bundle: {
          image: 'supercoolimageofladygagainfortnite'
        }
      }

      item = CombinedItemShop.new(item_data)

      expect(item).to be_a(CombinedItemShop)
      expect(item.id).to be_a(String)
      expect(item.id).to eq('this is a id')
      expect(item.date).to be_a(String)
      expect(item.date).to eq('this is a date 324234')
      expect(item.vbuck_icon).to be_a(String)
      expect(item.vbuck_icon).to eq('supercoolvbuckimage.png')
      expect(item.final_price).to be_a(Integer)
      expect(item.name).to be_a(String)
      expect(item.name).to eq('Chromatica Armor Gaga')
      expect(item.image).to be_a(String)
      expect(item.image).to eq('supercoolimageofladygagainfortnite')
    end
  end
end
