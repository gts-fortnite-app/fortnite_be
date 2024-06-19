class Api::V1::CombinedItemShopController < ApplicationController
  def index
    cached_data = Rails.cache.read('combined_item_shop_data')

    if cached_data
      render json: cached_data
    else
      begin
        data = CombinedItemShopFacade.custom_itemshop
        serialized_data = CombinedItemShopSerializer.new(data)
        Rails.cache.write('combined_item_shop_data', serialized_data, expires_in: 1.day)
        render json: serialized_data
      rescue StandardError => e
        render json: { error: "Failed to fetch or cache data: #{e.message}" }, status: :internal_server_error
      end
    end
  end
end
