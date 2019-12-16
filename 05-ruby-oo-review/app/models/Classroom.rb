class Classroom
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    # @@all << self
    self.class.all << self
  end
  
  def self.all
    @@all
  end

  def lectures
    Lecture.all.select { |lecture| lecture.classroom == self }
  end

  # classroom1.lectures

  def students
		lectures.map {|lecture| lecture.student }
	end
end
