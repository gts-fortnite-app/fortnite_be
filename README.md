<div align="center">
    <img src="https://github.com/gts-fortnite-app/fortnite_be/assets/127896538/04164b07-4b11-4b12-b63a-210ee05b8e5d" alt="Fortnite">
</div>

![pull request](https://img.shields.io/github/issues-pr/gts-fortnite-app/fortnite_be.svg)
![pull request closed](https://img.shields.io/github/issues-pr-closed/gts-fortnite-app/fortnite_be.svg)
[![website down](https://img.shields.io/website-up-down-green-red/http/monip.org.svg)](https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop)

![Made with Ruby on Rails](https://img.shields.io/badge/Made%20with-Ruby%20on%20Rails-%23990000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Made with Ruby](https://img.shields.io/badge/Made%20with-Ruby-%23990000?style=for-the-badge&logo=ruby&logoColor=white)


Technologies used:<br>
<div>
  <img src="https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
  <img src="https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white"/>
  <img src="https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white"/>
  <img src="https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white" />
</div>

---

GT's Fortnite Tracker is built with a Ruby on Rails backend and deployed on Heroku for accessibility. It integrates with Fortnite's external API to retrieve real-time data and implements a custom internal API to send data to the frontend with Cross-Origin Resource Sharing (CORS) support. Users can search players' Epic IDs to retrieve real-time player data, ranging from player level to current season stats. The backend uses Plain Old Ruby Objects (POROs) to encapsulate logic and limit data. The architecture follows a service-oriented approach with service and facade patterns to simplify interactions with Fortnite's external APIs. A JSON serializer formats data for the frontend, sending only essential info. Heroku scheduler runs a script to cache the daily item shop, ensuring only available items are displayed.

<details>
<summary>The Team</summary>

### ![built with love](http://ForTheBadge.com/images/badges/built-with-love.svg)
- Gabe Torres [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Gabe-Torres) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gabe-torres-74a515269/)
</details>

--- 

## Summary 
- [Important Links](#important-links)
- [Getting Started](#getting-started)
- [Routes](#routes)
- [Test Suite](#test-suite)
- [API JSON Contract](#api-json-contract)


## Important Links
- [Back-End Production Site](https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop)
- [Front-End Production Site](https://gts-fortnite-tracker-a0d0405c9f2a.herokuapp.com/)
- [Front-End Repo](https://github.com/gts-fortnite-app/fortnite_fe)


## Getting Started
<details>
<summary>Database Information</summary>

**Schema**

```ruby
ActiveRecord::Schema[7.0].define(version: 0) do
  enable_extension "plpgsql"
end
```

**Gems**
```ruby
ruby "3.2.2"
gem "rails", "~> 7.0.8"
gem "rack-cors"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem 'jsonapi-serializer'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false
gem "faraday"
gem 'redis'
gem 'redis-rails'
gem 'whenever', require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "pry"
  gem "shoulda-matchers"
  gem "vcr"
  gem "webmock"
end

group :development do
gem "launchy"
gem "simplecov"
end
```

**Installing**
 - Fork and clone this repo
  - Run `bundle install`
  - Run `rails db:{create,migrate,seed}`
  - Run `rails s` to start the server
  - Open your browser and navigate to `localhost:3000`
</details>


## API JSON Contract
*Description of API endpoints for front end application*

<u> Item Shop </u>
- Description of endpoints

> `GET /api/v1/item_shop`

*Success Response (200 OK):*

- Status: 200 OK
- Description: Successful response with a list of items.
- Data Format: An array of collection objects, each containing "id", "type", and "attributes".
<!-- - Location:  -->
```ruby
{
    "data": [
        {
            "id": "D4VDLocker",
            "type": "combined_item_shop",
            "attributes": {
                "final_price": 3000,
                "name": "Camille",
                "image": "https://fortnite-api.com/images/cosmetics/br/character_mouse/featured.png",
                "date": "2025-04-26T00:00:00Z",
                "vbuck_icon": "https://fortnite-api.com/images/vbuck.png"
            }
        },
        {
            "id": "MHA",
            "type": "combined_item_shop",
            "attributes": {
                "final_price": 800,
                "name": "Blackwhip Axe",
                "image": "https://fortnite-api.com/images/cosmetics/br/pickaxe_emeraldglassgreen/icon.png",
                "date": "2025-04-26T00:00:00Z",
                "vbuck_icon": "https://fortnite-api.com/images/vbuck.png"
            }
        },
        {
            "id": "RickandMorty",
            "type": "combined_item_shop",
            "attributes": {
                "final_price": 1500,
                "name": "Mr. Meeseeks",
                "image": "https://fortnite-api.com/images/cosmetics/br/character_geniusblob/featured.png",
                "date": "2025-04-26T00:00:00Z",
                "vbuck_icon": "https://fortnite-api.com/images/vbuck.png"
        }
        },
        {
            "id": "SignatureStyle0426",
            "type": "combined_item_shop",
            "attributes": {
                "final_price": 1100,
                "name": "Kofi Graves",
                "image": "https://fortnite-api.com/images/cosmetics/br/character_nefariousjewel/featured.png",
                "date": "2025-04-26T00:00:00Z",
                "vbuck_icon": "https://fortnite-api.com/images/vbuck.png"
        }
    },
    ....................................
            }
        }
    ]
}
```



> `GET /api/v1/stats/v2?name=#{:id}`

*Success Response (200 OK):*

- Status: 200 OK
- Description: Successful response with a return response of the player stats.
- Data Format: A hash of card objects, each containing "id", "type", and "attributes".
<!-- - Location:  -->
```ruby
{
    "data": {
        "id": "050a34f3337c4316893a46467d91317c",
        "type": "stats",
        "attributes": {
            "name": "JaTaaOG",
            "battle_pass_level": 622,
            "battle_pass_progress": 35,
            "overall": {
            "score": 2811619,
            "scorePerMin": 29.991,
            "scorePerMatch": 161.06,
            "wins": 2336,
            "top3": 2343,
            "top5": 1420,
            "top6": 3380,
            "top10": 325,
            "top12": 2432,
            "top25": 627,
            "kills": 56508,
            "killsPerMin": 0.603,
            "killsPerMatch": 3.237,
            "deaths": 15121,
            "kd": 3.737,
            "matches": 17457,
            "winRate": 13.381,
            "minutesPlayed": 93749,
            "playersOutlived": 534662,
            "lastModified": "2025-04-26T22:46:20Z"
        },
            "solo": {
            "score": 112169,
            "scorePerMin": 27.601,
            "scorePerMatch": 63.301,
            "wins": 67,
            "top10": 325,
            "top25": 627,
            "kills": 3331,
            "killsPerMin": 0.82,
            "killsPerMatch": 1.88,
            "deaths": 1705,
            "kd": 1.954,
            "matches": 1772,
            "winRate": 3.781,
            "minutesPlayed": 4064,
            "playersOutlived": 28374,
            "lastModified": "2025-04-03T23:30:59Z"
    },
        ...................
        }
    }
}
```

<u> Sad Path Error Handling </u>

```ruby
{
"status": 400,
"error": "missing name parameter"
}
```

# Routes

| Action | Route |
| ----------- | ----------- |
| get | '/api/v1/item_shop' |
| get | '/api/v1/stats/v2?name=:id' |

# Test Suite
 - run `bundle exec rspec` to run the test suite

**HappyPath**

```ruby
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
        expect(item).to have_key('type')
        expect(item).to have_key('id')
        expect(item).to have_key('attributes')

        attributes = item['attributes']
        expect(attributes['final_price']).to be_a(Integer)
        expect(attributes).to have_key('final_price')
        expect(attributes['name']).to be_a(String)
        expect(attributes).to have_key('name')
        expect(attributes['image']).to be_a(String)
        expect(item['attributes']).to have_key('image')
        expect(attributes['date']).to be_a(String)
        expect(attributes).to have_key('date')
        expect(attributes['vbuck_icon']).to be_a(String)
        expect(attributes).to have_key('vbuck_icon')
      end
    end
  end
end
```
---

**SadPath**

```ruby 
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
```

