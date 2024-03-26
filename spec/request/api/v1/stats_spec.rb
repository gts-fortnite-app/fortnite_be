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

    scenario 'sad path, returns code 404' do 
      name = ''

      headers = { 'CONTENT_TYPE' => 'application/json' }

      get '/api/v1/stats', headers: headers, params: name

      error_response = JSON.parse(response.body, symbolize_names: true)
      expect(response).to_not be_successful
      expect(response.content_type).to match(a_string_including("application/json"))
      expect(response.status).to eq(400)
      expect(response).to have_http_status(:bad_request)
      expect(error_response).to be_a(Hash)
      expect(error_response).to have_key(:error)
      expect(error_response[:status]).to eq(400)
    end
  end
end
