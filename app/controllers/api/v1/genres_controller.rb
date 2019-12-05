class Api::V1::GenresController < ApplicationController
  def index
    @genres = Genre.all
    render json: @genres
  end

  def show
    @genre = Genre.find(genre_params[:id])
    render json: @genre
  end

  private

  def genre_params
    params.require(:genre).permit(:id, :name)
  end
end
