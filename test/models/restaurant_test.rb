require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  describe Restaurant do
    let(:restaurant_params) {{name: "La Fonda"}}
    let(:restaurant) {Restaurant.new restaurant_params}

    it 'is valid when created with valid restaurant_params' do
      restaurant.must_be :valid?
    end

    it 'is invalid without a name' do
      restaurant_params.delete :name
      restaurant.wont_be :valid?
      restaurant.errors[:name].must_be :present?
    end
  end
end
