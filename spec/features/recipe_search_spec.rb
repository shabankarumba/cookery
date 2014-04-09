require "spec_helper"

feature "Searches for recipe when typing ingredients" do
  before do
    @recipe = FactoryGirl.create(:recipe, recipe_name: "Pasta Bake")
  end

  scenario "Displays a list of all the recipes that contain that ingredient" do
    visit root_path
    fill_in "query", with: "milk"
    click_button "Search"
    page.should have_content(@recipe.recipe_name)
  end
end