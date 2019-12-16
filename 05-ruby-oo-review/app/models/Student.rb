class Student
	attr_reader :first_name, :last_name
	@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
		@last_name  = last_name
		# @pencils = []
		@@all << self
	end

	def full_name
		first_name + " " + last_name
		# self.first_name + " " + self.last_name
		# @first_name + " " + @last_name
	end

	def add_lecture(classroom, name)
		Lecture.new(self, classroom, name)
	end

	def lectures
		# all_lectures = Lecture.all
		# student_lectures = all_lectures.select do |lecture| 
		# 	lecture.student == self
		# end

		Lecture.all.select { |lecture| lecture.student == self }
	end

	def num_lectures
		lectures.count
	end

	def classrooms
		# all classroom instances that belong to this student
		lectures.map {|lecture| lecture.classroom }
	end

	def self.find_by_full_name(full_name)
		self.all.find do |student|
			student.full_name == full_name
		end
	end

	def self.all
		@@all
	end
end
