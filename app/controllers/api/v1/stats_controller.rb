class Api::V1::StatsController < ApplicationController
  
  def show
    if params[:name].blank? || params[:name].empty? 
      raise ArgumentError, 'missing name parameter'
    else
      render json: StatsSerializer.new(StatsFacade.player_stats(params[:name])), status: :ok
    end
  rescue ArgumentError => e
    render json: { status: 400, error: e.message }, status: :bad_request
  rescue StandardError => e
    render json: { status: 500, error: e.message }, status: :internal_server_error
  end
end
