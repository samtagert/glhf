class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.game_id = params[:game_id]
    @review.save
    redirect_to game_path(params[:game_id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to game_path(@review.game_id)
  end

  private
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end