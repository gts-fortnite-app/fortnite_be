class Api::V1::StatsController < ApplicationController
  
  def index
    render json: StatsSerializer.new(StatsFacade.player_stats(params[:name]))
  end
end