class RatingsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]

  def index
    begin
      @overall_rating = 2
      @restaurant = Restaurant.count
      @rating = Restaurant.offset(rand(@restaurant)).first
    end until @rating.ratings.average(:rating).to_i > @overall_rating
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @rating = current_user.ratings.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @rating = @restaurant.ratings.new(ratings_params)
    @rating.user = current_user

    respond_to do |format|
      if @rating.save
        format.html { redirect_to restaurants_path, notice: 'Restaurant was successfully rated.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def ratings_params
      params.require(:rating).permit(:rating, :last_visited)
    end
end
