class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @review = Review.new
  end
  private
  def game_params
    params.require(:game).permit(:name, :image, :trailer)
  end
end