class Ingredient < ActiveRecord::Base
  belongs_to :recipe, dependent: :destroy
end
