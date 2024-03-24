require 'rails_helper'

RSpec.describe 'item shop combined Service' do
  context 'instance methods' do
    context '#get_itemshop' do
      scenario 'returns the fortnite itemshop', :vcr do
        item_shop = CombinedItemShopService.get_itemshop
        conn = CombinedItemShopService.conn

        expect(item_shop).to be_a(Hash)
        expect(conn.url_prefix.to_s).to eq('https://fortnite-api.com/v2/')
      end
    end
  end
end