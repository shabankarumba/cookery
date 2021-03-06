class Recipe < ActiveRecord::Base
  has_many :ingredients

  validates :recipe_name, presence: true, uniqueness: {scope: :author}
  validates :difficulty, presence: true
  validates :author, presence: true
  validates :cooking_time, inclusion: { in: [ 5,10,15,20,25,30 ] }
  validates :serves, inclusion: { in: [ 1,2,3,4,5,6,7,8 ] }

  accepts_nested_attributes_for :ingredients
end