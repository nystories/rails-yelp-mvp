class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(valid_restaurant)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def valid_restaurant

    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
