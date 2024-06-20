namespace :cache do
  desc "Cache the API response"
  task :cache_api_response => :environment do
    begin
      puts "Starting cache task"
      cached_data = CombinedItemShopFacade.custom_itemshop
      puts "Fetched data from API"
      serialized_data = CombinedItemShopSerializer.new(cached_data)
      puts "Serialized data"
      Rails.cache.write('combined_item_shop_data', serialized_data)
      puts "Cached API response at #{Time.now}"
    rescue StandardError => e
      puts "Failed to cache API response: #{e.message}"
    end
  end
end