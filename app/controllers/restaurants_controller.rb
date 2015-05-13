class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create] 

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = current_user.restaurants.build
  end

  def create
    @restaurant = current_user.restaurants.build(restaurant_params)
    
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
      params.require(:restaurant).permit(:name)
    end
end
