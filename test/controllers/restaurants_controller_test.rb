require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  def test_index
    get :index
    assert_response :success
  end

  def test_show
    get :show, id: restaurants(:two)
    assert_response :success
  end
end
