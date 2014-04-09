require 'spec_helper'

feature "Recipe Index Page" do
  before do
    @recipe = FactoryGirl.create(:recipe)
  end

  scenario "indexes all recipes" do
    visit root_path
    page.should have_content(@recipe.recipe_name)
  end

end