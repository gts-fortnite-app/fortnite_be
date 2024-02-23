require "rails_helper"

RSpec.describe "Combined Item Shop", type: :request do 
  context "GET /item-shop" do 
    scenario "returns fortnite daily item shop info" do
        get '/api/v1/item_shop'

        result = JSON.parse(response.body, symbolize_name: true)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(result).to be_a(Hash)
    end
  end
end