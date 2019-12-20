class Character < ActiveRecord::Base
	has_many :appearances
	has_many :episodes, through: :appearances

	# def self.print_all
	# 	self.all.each do |character|
	# 		puts character.name
	# 	end
	# end

	# def self.all_with_first_name_ross
	# 	sql = <<-SQL
	# 		SELECT * FROM characters
	# 		WHERE name == "Ross"
	# 	SQL

	# 	DB[:conn].execute("SELECT * FROM characters WHERE name == 'Ross'")
	# end
end

# module ActiveRecord
# 	class Base
# 	end

# 	class Potato
# 	end
# end

# ActiveRecord::Base
# ActiveRecord::Potato