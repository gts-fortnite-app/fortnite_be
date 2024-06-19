namespace :cache do
  desc "Cache the API response"
  task :cache_api_response => :environment do
    cached_data = CombinedItemShopFacade.custom_itemshop
    serialized_data = CombinedItemShopSerializer.new(cached_data)
    Rails.cache.write('combined_item_shop_data', serialized_data)
  end
end
