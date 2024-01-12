class Api::V0::ItemShopController < ApplicationController

  def index
    require 'pry'; binding.pry
    render json: ItemShopSerializer.new(ItemShopFacade.custom_itemshop)
  end
end