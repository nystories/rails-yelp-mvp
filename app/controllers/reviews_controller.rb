class ReviewsController < ApplicationController

  def new
    @review = Review.new
    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @review.restaurant_id = restaurant_id
  end

  def create
    @review = Review.new valid_params
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def valid_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

end
