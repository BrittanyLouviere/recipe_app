class RecipeIngredientJoin < ApplicationRecord
    belongs_to :recipe, class_name: "Recipe"
    belongs_to :ingredient, class_name: "Ingredient"
    validates :recipe_id, presence: true
    validates :ingredient_id, presence: true

    def ingredient_name
        ingredient.name
    end

    def recipe_name
        recipe.name
    end

    def instructions
        recipe.instructions
    end
end
