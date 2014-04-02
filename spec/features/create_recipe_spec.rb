require 'spec_helper'

feature "Recipe" do
  let(:recipe) { FactoryGirl.create(:recipe) }
  let(:ingredient) { FactoryGirl.create(:ingredient) }

  scenario "Creates an new recipe" do
    visit "/recipes/new"
    fill_in :recipe_name, :with => recipe.recipe_name
    fill_in :recipe_author, :with => recipe.author
    select "10", :from => :recipe_cooking_time
    select "2", :from => :recipe_serves
    select "Easy", :from => :recipe_difficulty
    click_button "Create"
    visit "/recipes/1"
    page.should have_content "Omelette"
  end

  scenario "Adding Ingredients to a recipe" do
    visit '/recipes/new'
    fill_in :recipe_name, :with => recipe.recipe_name
    fill_in :recipe_author, :with => recipe.author
    select "10", :from => :recipe_cooking_time
    select "2", :from => :recipe_serves
    select "Easy", :from => :recipe_difficulty
    fill_in "ingredient-name", with: ingredient.ingredient_name
    fill_in "ingredient-unit", with: ingredient.unit
    fill_in "ingredient-quantity", with: ingredient.quantity
    click_button "Create"
    visit "/recipes/1"
    page.should have_content "Omelette"
  end
end