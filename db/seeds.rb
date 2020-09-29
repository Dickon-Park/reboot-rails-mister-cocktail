
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
ingredients_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

 ingredients_serialized = open(ingredients_url).read
puts "---"
 ingredients_hash = JSON.parse(ingredients_serialized)

ingredients_array = ingredients_hash["drinks"]

ingredients_array.each do |ingredient|
  ingredient_name = ingredient["strIngredient1"]
  p Ingredient.create(name: ingredient_name)
end