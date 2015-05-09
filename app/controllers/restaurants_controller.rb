class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurants_path, notice: 'Restaurant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :rating, :last_visited)
    end
end
