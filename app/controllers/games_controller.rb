class GamesController < ApplicationController
  def index
    @games = Game.all
    @users = User.all
  end

  def show
    @game = Game.find(params[:id])
    @review = Review.new
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :platforms)
  end
end