# This is our join model
class Lecture
	attr_reader :classroom, :name, :student
	@@all = []

	def initialize(student, classroom, name)
		@student = student
		@classroom = classroom
		@name = name
		
		self.class.all << self
	end
	
	def self.all
		@@all
	end
end
# lecture6 = Lecture.new(student3, classroom1, "Ruby OO Relationships")
