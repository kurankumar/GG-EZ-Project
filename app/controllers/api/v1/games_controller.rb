class Api::V1::GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(game_params[:id])
    render json: @game
  end

  private

  def game_params
    params.require(:game).permit(:id, :name, :image, :genre_id)
  end
end
