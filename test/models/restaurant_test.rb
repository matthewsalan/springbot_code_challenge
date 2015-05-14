require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  def new
    @restaurant = Restaurant.new(name: "Burger King")
  end

  test "should be valid" do
    assert @restaurant.valid?
  end
end
