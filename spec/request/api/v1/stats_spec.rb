require 'rails_helper'

RSpec.describe 'player stats search', type: :request do
  context '#player_stats' do
    scenario 'returns player stats by name' do
      name = {
        name: "JaTaaOG"
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      get '/api/v1/stats', headers: headers, params: name

      expect(response).to be_successful
      expect(response.content_type).to match(a_string_including("application/json"))
      expect(response.status).to eq(200)
      expect(response.body).to be_a(String)
    end
  end
end