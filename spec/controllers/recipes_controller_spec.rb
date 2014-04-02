require 'spec_helper'

describe RecipesController do
  
  it "has a new action" do
    get :new
    response.should be_ok
  end

  it "has a show action" do
    @recipe = FactoryGirl.create(:recipe)
    get :show, id: @recipe.id
    response.should be_ok
  end

  describe "POST #create" do
    describe "with valid params" do
      it "saves a record" do
        expect {
          post :create, recipe: { recipe_name: "Omelette", author: "Steven Lee", cooking_time: 10, serves: 2, difficulty: "easy"}
        }.to change{ Recipe.count }.from(0).to(1)   
      end
    end
    
    describe "with invalid params" do
      let(:invaild_params) do 
        { recipe: { recipe_name: "", author: "", cooking_time: "animal", serves: "foobar", difficulty: ""} }
      end

      it "does not sava a record" do
        expect {
          post :create, invaild_params
        }.to_not change{ Recipe.count }   
      end
      
      it "renders the new form" do
        post :create, invaild_params
        response.should render_template(:new)
      end
    end
  end
end