class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
