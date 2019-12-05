class Api::V1::ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores
  end

  def show
    @score = Score.find(score_params[:id])
    render json: @score
  end

  private

  def score_params
    params.require(:score).permit(:id, :points, :user_id)
  end
end
