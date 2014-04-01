require 'spec_helper'

feature "Recipe" do
  scenario "Creates an new recipe" do
    visit "/recipes/new"
    fill_in :recipe_name, :with => "Omelette"
    fill_in :recipe_author, :with => "Steven Lee"
    select "10", :from => :recipe_cooking_time
    select "2", :from => :recipe_serves
    select "Easy", :from => :recipe_difficulty
    click_button "Create"
    visit "/recipes/1"
    page.should have_content "Omelette"
  end
end