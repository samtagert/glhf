class GamesController < ApplicationController
  def index
    @games = Game.all 
  end

  def show
    @game = Game.find(1)        
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :platforms)
  end
end