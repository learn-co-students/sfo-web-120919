class Cat < Animal
	# We initialize a cat with Cat.new("Meow")
	# 1. Find initialize method
	def initialize(name)
		# 2. Create num_lives instance variable
		@num_lives = 9
		# 3. Go to the parent class and find a method called initialize
		super(name)
		# 7. Create toys instance variable
		@toys = []
	end

	def play_with_stuff
		puts "Playing from cat class"
		super
	end
end
