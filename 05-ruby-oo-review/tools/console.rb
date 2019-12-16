require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Bob", "Saget")
student2 = Student.new("Coffee", "Dad")
student3 = Student.new("David", "Rosenholz")

classroom1 = Classroom.new("Fox")
classroom2 = Classroom.new("Borg")
classroom3 = Classroom.new("Lovelace")

lecture1 = Lecture.new(student1, classroom2, "Ruby OO Review")
lecture2 = Lecture.new(student2, classroom2, "Intro to JavaScript")
lecture3 = Lecture.new(student3, classroom3, "Ruby OO Relationships")
lecture4 = Lecture.new(student1, classroom1, "Ruby OO Review")
lecture5 = Lecture.new(student3, classroom2, "Intro to JavaScript")
lecture6 = Lecture.new(student3, classroom1, "Ruby OO Relationships")

# Student.find_by_full_name("Bob Saget")

# Do not edit below pry
binding.pry
0
