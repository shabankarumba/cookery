FactoryGirl.define do

  factory :recipe do
    recipe_name "Omelette"
    author "Steven Lee"
    cooking_time 10
    serves 2
    difficulty "easy"
  end

  factory :ingredient do
    ingredient_name "Egg"
    quantity 3
    unit "Small"
  end
end