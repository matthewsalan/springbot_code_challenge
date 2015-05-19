require 'test_helper'

describe "Index page acceptance test" do 
  it 'resolves the homepage' do 
    assert_routing "/", controller: "ratings", action: "index"
  end

  describe "New rating page acceptance test" do
    it 'resolves the new rating page' do 
      assert_routing "/restaurants/:restaurant_id/ratings/new", controller: "ratings", action: "new", restaurant_id: ":restaurant_id"
    end
  end
end