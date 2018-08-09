# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# uri = URI.parse(url)
# response = uri.open.read
# r = JSON.parse(response)

# r["drinks"].each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end
# puts "Done"

cocktail_a = Cocktail.create!(name: "boubi")
cocktail_b = Cocktail.create!(name: "truc")

dose1 = Dose.create!({
  cocktail: cocktail_a,
  ingredient: orange,
  description: "6cl"
})

dose2 = Dose.create!({
  cocktail: cocktail_a,
  ingredient: gin,
  description: "3cl"
})
dose2.save

dose3 = Dose.create!({
  cocktail: cocktail_b,
  ingredient: lemon,
  description: "1cl"
})
dose3.save

