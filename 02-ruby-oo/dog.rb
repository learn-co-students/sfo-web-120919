require 'pry'

class Dog
	attr_accessor :name, :weight
	attr_reader :breed
	# attr_writer 

	@@all = []

	def initialize(name, breed)
		@name = name
		@breed = breed

		@@all << self
	end

	def self.all
		# binding.pry
		@@all
	end

	def self.find_by_name(dog_name)
		
	end

	# def self.add_dog(dog)
	# 	@@all << dog
	# end

	# def name
	# 	@name
	# end

	# def name=(name)
	# 	@name = name
	# end

	# def breed
	# 	@breed
	# end

	def bark
		# binding.pry
		puts "wooooooof"
	end
end

dog = Dog.new("Fido", "Golden Retriever")
# dog.bark

dog = Dog.new("Bob", "Pug")
# dog.bark

Dog.all

binding.pry

# camelCase
# PascalCase
# snake_case