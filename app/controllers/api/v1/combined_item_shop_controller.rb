class Api::V1::CombinedItemShopController < ApplicationController
  def index
    render json: CombinedItemShopSerializer.new(CombinedItemShopFacade.custom_itemshop)
  end
end