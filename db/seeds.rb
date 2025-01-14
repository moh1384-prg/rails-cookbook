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
Bookmark.destroy_all
Recipe.destroy_all


puts "Creating Recipes"
# Create recipes
recipes = Recipe.create!([
  {
    name: "Spaghetti Carbonara",
    description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....",
    image_url: "https://images.unsplash.com/photo-1633337474564-1d9478ca4e2e?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rating: 4.5,
  },
  {
    name: "Classic Margherita Pizza",
    description: "A simple and delicious classic Margherita pizza with fresh tomatoes, mozzarella, and basil.",
    image_url: "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rating: 4.2,
  },
  {
    name: "Chicken Tikka Masala",
    description: "A flavorful and creamy chicken tikka masala with a rich tomato-based sauce and a blend of spices.",
    image_url: "https://images.unsplash.com/photo-1565557623262-b51c2513a641?q=80&w=1971&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rating: 3.9,
  },
  {
    name: "Vegetable Stir-Fry",
    description: "A quick and healthy vegetable stir-fry with a medley of fresh veggies and a savory soy-based sauce.",
    image_url: "https://images.unsplash.com/photo-1464500650248-1a4b45debb9f?q=80&w=1998&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rating: 3.2,
  }
])


puts "Seeded #{Recipe.count} recipes"
