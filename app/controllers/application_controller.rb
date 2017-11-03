class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  
    helper_method :current_user
    helper_method :avatar
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
    def avatar
      @avatar = Game.find_by(name: current_user.favorite_game).image
    end
end
