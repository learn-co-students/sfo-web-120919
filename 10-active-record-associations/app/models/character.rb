class Character < ActiveRecord::Base

	def self.print_all
		self.all.each do |character|
			puts character.name
		end
	end
	
end
