# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Dose.destroy_all
# Cocktail.destroy_all
# Ingredient.destroy_all

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# uri = URI.parse(url)
# response = uri.open.read
# r = JSON.parse(response)

# r["drinks"].each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end
# puts "Ingredients done"

drinks = ["Coffee Sip", "Milk Blood", "Red Riddle", "Garlic Wacker",
"Sanguine Grog", "Brilliant Light Ale", "Green Roar", "Pineapple Lagoon",
"Grapefruit Dark Beer", "Gin Giant", "Spring Petal", "Pink Sunset",
"Silent Thriller", "Low Velvet", "Minty Crush", "Gin Breeze", "Tiny Duke",
"Noxious Rum", "Passion Fruit Paralyzer", "Silent Fluffy"]

drinks.each do |drink|
  Cocktail.create!(name: "#{drink}")
end
puts "Cocktails done"

20.times do
  Dose.create!(
    description: "#{rand(1..10)} cl",
    cocktail:  Cocktail.order("RANDOM()").first,
    ingredient: Ingredient.order("RANDOM()").first
  )
end
puts "Doses OK"

  # Dose.create!({
  #   cocktail: drink,
  #   ingredient: Ingredient.sample(0..5),
  #   description: rand(1..10)
  # })
# dose1 = Dose.create!({
#   cocktail: cocktail_a,
#   ingredient: orange,
#   description: "6cl"
# })

# dose2 = Dose.create!({
#   cocktail: cocktail_a,
#   ingredient: gin,
#   description: "3cl"
# })
# dose2.save

# dose3 = Dose.create!({
#   cocktail: cocktail_b,
#   ingredient: lemon,
#   description: "1cl"
# })
# dose3.save

