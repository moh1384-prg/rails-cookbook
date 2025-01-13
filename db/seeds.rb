# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing records
Recipe.destroy_all


puts "Creating Recipes"
# Create recipes
recipes = Recipe.create!([
  {
    name: "Spaghetti Carbonara",
    description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....",
    image_url: "https://unsplash.com/photos/a-white-plate-topped-with-spaghetti-and-bacon-fDLBn8X_IlU",
    rating: 4.5,
  },
  {
    name: "Classic Margherita Pizza",
    description: "A simple and delicious classic Margherita pizza with fresh tomatoes, mozzarella, and basil.",
    image_url: "https://unsplash.com/photos/pizza-with-berries-MQUqbmszGGM",
    rating: 4.2,
  },
  {
    name: "Chicken Tikka Masala",
    description: "A flavorful and creamy chicken tikka masala with a rich tomato-based sauce and a blend of spices.",
    image_url: "https://unsplash.com/photos/roti-and-meat-slices-with-sauce-on-plate-ZSukCSw5VV4",
    rating: 3.9,
  },
  {
    name: "Vegetable Stir-Fry",
    description: "A quick and healthy vegetable stir-fry with a medley of fresh veggies and a savory soy-based sauce.",
    image_url: "https://unsplash.com/photos/person-mixing-vegetable-in-wok-grSEQB9IeoU",
    rating: 3.2,
  }
])


puts "Seeded #{Recipe.count} recipes"
