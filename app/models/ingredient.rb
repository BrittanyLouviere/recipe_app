class Ingredient < ApplicationRecord
    has_many :recipesJoin, class_name:  "RecipeIngredientJoin",
                           foreign_key: "ingredient_id",
                           dependent:   :destroy
    has_many :recipes, through: :ingredientsJoin, source: :recipe

    before_validation {name.strip! unless self.name.nil?}
    validates :name, presence: true, length: { maximum: 255 }, uniqueness: true
end
