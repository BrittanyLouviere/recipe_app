class CreateRecipeIngredientJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredient_joins do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string  :amount

      t.timestamps
    end
    add_index :recipe_ingredient_joins, :recipe_id
    add_index :recipe_ingredient_joins, :ingredient_id
    add_index :recipe_ingredient_joins, [:recipe_id, :ingredient_id], unique: true
  end
end
