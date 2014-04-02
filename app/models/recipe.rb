class Recipe < ActiveRecord::Base
  validates :recipe_name, uniqueness: {scope: :author}
  validates :difficulty, presence: true
  validates :author, presence: true
  validates :cooking_time, inclusion: { in: [ 5,10,15,20,25,30 ] }
  validates :serves, inclusion: { in: [ 1,2,3,4,5,6,7,8 ] }
end