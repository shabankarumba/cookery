require 'spec_helper'

feature "show recipe page" do
  before do
    @recipe = FactoryGirl.create(:recipe)
  end

  scenario "recipe appears" do
    visit recipes_path(@recipe.id)
    page.should have_content(@recipe.recipe_name)
  end
end