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
require "json"
require "open-uri"

# # Clear existing records

Recipe.destroy_all


puts "Creating Recipes"
# # Create recipes

categories = ["Breakfast", "Seafood", "Dessert", "Vegetarian"]

def recipe_builder(id)
  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  meals_serialized = URI.parse(url).read
  meal = JSON.parse(meals_serialized)["meals"][0]

  puts "Creating #{meal["strMeal"]}"
  Recipe.create!(
    name: meal["strMeal"],
    description: meal["strInstructions"],
    image_url: meal["strMealThumb"],
    rating: rand(2..5.0).floor(1)
  )
end

categories.each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  recipes_serialized = URI.parse(url).read
  recipes = JSON.parse(recipes_serialized)
  puts "Parsed data: #{recipes}"
  recipes["meals"].take(5).each do |recipe|
    recipe_builder(recipe["idMeal"])
  end
end




