class Api::V1::CombinedItemShopController < ApplicationController

  def index
    # require 'pry'; binding.pry
    render json: CombinedItemShopSerializer.new(CombinedItemShopFacade.custom_itemshop)
  end
end