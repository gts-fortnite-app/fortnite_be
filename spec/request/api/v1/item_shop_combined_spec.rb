require 'rails_helper'
RSpec.describe 'Combined Item Shop', type: :request do
  context 'GET /item-shop' do
    scenario 'returns fortnite daily item shop info' do
      get '/api/v1/item_shop'

      result = JSON.parse(response.body, symbolize_name: true)
    # require 'pry'; binding.pry
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(result).to be_a(Hash)
      expect(result).to have_key('data')

      result['data'].each do |item|
        expect(item['attributes']).to have_key('final_price')
        expect(item['attributes']).to have_key('name')
        expect(item['attributes']).to have_key('image')
        expect(item['attributes']).to have_key('type')
        expect(item['attributes']).to have_key('date')
        expect(item['attributes']).to have_key('vbuck_icon')
      end
    end
  end
end
