flour = Ingredient.create!(name: "Unbleached all-purpose flour")
salt = Ingredient.create!(name: "Salt")
bpowder = Ingredient.create!(name: "Baking powder")
nutmeg = Ingredient.create!(name: "Nutmeg")
butter = Ingredient.create!(name: "Unsalted butter")
bsugar = Ingredient.create!(name: "Light brown sugar")
sugar = Ingredient.create!(name: "Sugar")
eggs = Ingredient.create!(name: "Large eggs")
oats = Ingredient.create!(name: "Old-fashioned oats")
raisens = Ingredient.create!(name: "Raisens")

instructions = "1. Adjust oven racks to the upper-middle and lower-midle positions and heat the oven to 350 degrees. Line 2 large baking sheets with parchment paper. Whisk the flour, salt, baking powder, and numeg together in a medium bowl; set aside.

2. In a stand mixer fitted with the paddle attachment, beat the butter and sugars at medium speed until ligth and fluffy, about 2 minutes. Add the eggs, one at a time, and mix until combined, about 30 seconds.

3. Decrease the speed to low and slowly add the dry ingredients until combined, about 30 seconds. Mix in the oats and raisins until just incorporated.

4. Divide the dough into 18 portions, each a generous 2 tablespoons, and roll them between your hands into balls about 2 inches in diameter. Place the dough balls on the prepared baking sheets, spacing them about 2 inches apart.

5. Bake, switching and rotating the sheets halfway through the baking time, until the cookies turn golden brown around the edges, 22 to 25 minutes. Cool the cookies on the baking sheets fo 2 minutes; using a wide metal spatula,  transfer the cookies to a wire rack and cool to room temperature."

cookies = Recipe.create!(name: "Oatmeal Raisin Cookies",
               instructions: instructions)

cookies.add(flour, "1 & 1/2 cups")
cookies.add(salt, "1/2 teaspoon")
cookies.add(bpowder, "1/2 teaspoon")
cookies.add(nutmeg, "1/4 teaspoon")
cookies.add(butter, "16 tablespoons, softened")
cookies.add(bsugar, "1 cup packed")
cookies.add(sugar, "1 cup")
cookies.add(eggs, "2")
cookies.add(oats, "3 cups")
cookies.add(raisens, "1 & 1/2 cups")
