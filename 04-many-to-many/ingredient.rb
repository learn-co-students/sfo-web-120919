# Create an ingredient class
# An ingredient should be initalized with a name
# Where do we save all of our ingredients?

class Ingredient
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		# @recipes = []
		@@all << self
	end

	def self.all
		@@all
	end

	def recipe_ingredient
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.ingredient == self
    end
  end

  def recipes
    recipe_ingredient.map do |recipe_ingredient|
      recipe_ingredient.recipe
    end
  end
end

5.times do
	Ingredient.new(Faker::Food.ingredient)
end
