class Character < ActiveRecord::Base

	def self.print_all
		self.all.each do |char|
			puts char.name
		end
	end
	
end
