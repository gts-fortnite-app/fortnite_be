require 'rails_helper'
RSpec.describe 'Combined Item Shop', type: :request do
  context '#index' do
    scenario 'returns fortnite daily item shop info', :vcr do
      get '/api/v1/item_shop'
      expect(response).to be_successful

      result = JSON.parse(response.body, symbolize_name: true)

      expect(response.status).to eq(200)
      expect(result).to be_a(Hash)
      expect(result).to have_key('data')

      items = result['data']

      items.each do |item|
        attributes = item['attributes']
        expect(attributes['final_price']).to be_a(Integer)
        expect(attributes).to have_key('final_price')
        expect(attributes['name']).to be_a(String)
        expect(attributes).to have_key('name')
        expect(attributes['image']).to be_a(String)
        expect(item['attributes']).to have_key('image')
        expect(attributes['type']).to be_a(Hash)
        expect(attributes).to have_key('type')
        expect(attributes['date']).to be_a(String)
        expect(attributes).to have_key('date')
        expect(attributes['vbuck_icon']).to be_a(String)
        expect(attributes).to have_key('vbuck_icon')
      end
    end
  end
end
