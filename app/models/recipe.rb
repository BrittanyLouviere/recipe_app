class Recipe < ApplicationRecord
    has_many :ingredientsJoin, class_name:  "RecipeIngredientJoin",
                               foreign_key: "recipe_id",
                               dependent:   :destroy
    has_many :ingredients, through: :ingredientsJoin, source: :ingredient

    def add(ingredient, amount = "")
        ingredientsJoin << RecipeIngredientJoin.new(ingredient_id: ingredient.id, amount: amount)
    end

    def remove(ingredient)
        ingredients.delete(ingredient)
    end

    def uses?(ingredient)
        ingredients.includes?(ingredient)
    end
end
