require 'spec_helper'

describe RecipesController do
  
  it "has a new action" do
    get :new
    response.should be_ok
  end

  it "has a show action" do
    @recipe = Recipe.create
    get :show, id: @recipe.id
    response.should be_ok
  end

  describe "POST #create" do
    it "saves a record" do
      expect {
        post :create, recipe: { recipe_name: "Omelette", author: "Steven Lee", cooking_time: 10, serves: 2, difficulty: "easy"}
      }.to change{ Recipe.count }.from(0).to(1)   
    end
  end

end