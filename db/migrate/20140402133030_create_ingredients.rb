class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
