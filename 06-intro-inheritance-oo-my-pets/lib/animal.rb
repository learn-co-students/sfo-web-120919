class Animal
	attr_reader :name
	attr_accessor :mood

	# (4. Ruby found initialize method)
	def initialize(name)
		# 5. Create name instance variable
		@name = name
		# 6. Create mood instance variable
		@mood = "nervous"
	end

	def play_with_stuff
		puts "Playing from animal class"
	end
end
