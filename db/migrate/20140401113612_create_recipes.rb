class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |table|
      table.string :recipe_name
      table.string :author
      table.integer :cooking_time
      table.integer :serves
      table.string :difficulty
    
      table.timestamps
    end
  end
end
