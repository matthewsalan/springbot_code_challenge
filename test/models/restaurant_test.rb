require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  def new
    @restaurant = restaurants(:one)
    test "should be valid" do
      assert @restaurant.valid?
    end
  end
end
