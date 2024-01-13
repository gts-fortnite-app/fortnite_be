class Api::V0::ItemShopController < ApplicationController

  def index
    render json: ItemShopSerializer.new(ItemShopFacade.custom_itemshop)
  end
end