class Pizza < ApplicationRecord

	def print_all_attributes
		# self is the instance of the pizza (that we call this method on)
		"#{name} | Size: #{size} | Extra Cheese: #{extra_cheese} | Price: #{cost}"
	end

end
