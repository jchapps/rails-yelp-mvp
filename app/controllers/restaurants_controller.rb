class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[review]

  def index
    @restaurants = Restaurant.all
  end

  def show
    set_restaurant
  end

  def review
    @review
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
