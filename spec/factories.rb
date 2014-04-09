FactoryGirl.define do

  factory :recipe do
    sequence :recipe_name do |n| 
      "Omelette#{n}"
    end
    author "Steven Lee"
    cooking_time 10
    serves 2
    difficulty "easy"
  end

  factory :ingredient do
    ingredient_name "milk"
    quantity 3
    unit "Small"
    recipe
  end

end