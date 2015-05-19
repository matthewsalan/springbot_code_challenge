require 'test_helper'

describe "Index page acceptance test" do 
  it 'resolves the index page' do 
    assert_routing "/restaurants", controller: "restaurants", action: "index"
  end

  describe "Show page acceptance test" do
    it 'resolves the show page' do 
      assert_routing "/restaurants/:id", controller: "restaurants", action: "show", id: ":id"
    end
  end

  describe "New restaurants page acceptance test" do
    it 'resolves the new restaurants page' do 
      assert_routing "/restaurants/new", controller: "restaurants", action: "new"
    end
  end
end