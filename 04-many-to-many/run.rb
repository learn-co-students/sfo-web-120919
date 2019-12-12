require 'pry'
require 'faker'

require_relative './recipe.rb'
require_relative './ingredient.rb'
require_relative './recipe_ingredient.rb'

RecipeIngredient.new(Recipe.all.first, Ingredient.all.first)
RecipeIngredient.new(Recipe.all[1], Ingredient.all[1])
RecipeIngredient.new(Recipe.all[2], Ingredient.all[2])
RecipeIngredient.new(Recipe.all[0], Ingredient.all[4])
RecipeIngredient.new(Recipe.all[3], Ingredient.all[2])

recipe = Recipe.all.first
recipe.ingredients
# binding.pry


# # This is a class method
# def self.styles
# 	# self refers to the entire class (Bike)
# 	self
# end

# # This is an instance method
# def gears
# 	# self in an instance method refers to the instance itself (e.g. mongoose)
# 	self
# end