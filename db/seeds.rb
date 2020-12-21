Ingredient.create!(name: "Milk")
Ingredient.create!(name: "Eggs")
Ingredient.create!(name: "Flour")

Recipe.create!(name: "Cake",
               instructions: "Mix it up!")

cake = Recipe.first
cake.add(Ingredient.first, "2 cups")
cake.add(Ingredient.second, "3 large")