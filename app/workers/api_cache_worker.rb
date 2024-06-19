class ApiCacheWorker
  # include Sidekiq::Worker

  def perform
    # Fetch data from the API
    # response = RestClient.get('https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop')
    response = Faraday.get('https://fortnite-item-shop-be-ed2ec5543cb7.herokuapp.com/api/v1/item_shop')
    # require 'pry'; binding.pry
    data = JSON.parse(response.body)

    # Store the data in the Rails cache
    Rails.cache.write('api_data', data, expires_in: 24.hours)
  end
end
