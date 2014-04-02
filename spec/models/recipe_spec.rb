require 'spec_helper'

describe Recipe do
  describe "validations" do
    it "the presence of name" do
      same_author = Recipe.create(recipe_name: "Omelette", author: "Steven Lee", cooking_time: 10, serves: 2, difficulty: "easy")
      subject.recipe_name = "Omelette"
      subject.author = "Steven Lee"
      subject.should have(1).error_on(:recipe_name)
    end

    it "the presence of difficulty" do
      subject.should have(1).error_on(:difficulty)
    end

    it "the presence of author" do
      subject.should have(1).error_on(:author)
    end

    it "the presence of cooking time" do
      subject.cooking_time = 34
      subject.should have(1).error_on(:cooking_time)
    end

    it "the presence of cooking time" do
      subject.serves = 9
      subject.should have(1).error_on(:serves)
    end
  end  
end