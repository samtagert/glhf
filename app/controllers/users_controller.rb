class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(params[:id])
    else
      render :edit
    end
  end
  
  def show
    @user = User.find(params[:id])
    @avatar = Game.find_by(name: @user.favorite_game).image
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :location, :password, :password_confirmation, :favorite_game)
  end
end