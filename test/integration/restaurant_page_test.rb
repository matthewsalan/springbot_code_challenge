require "test_helper"

feature 'Restaurant Index page' do 
  scenario 'visit restaurant index listing page' do 
    visit restaurants_path
    page.must_have_content "All Restaurants"
  end
end