# User class definition
class User
	attr_accessor :username, :species

	def username
		@username
	end

	def initialize(username)
		@username = username
	end

	def tweets
		tweets = Tweet.all

		tweets.select do |tweet|
			tweet.user == self
		end
	end

	# def username
	# 	@username
	# end

	# def username=(username)
	# 	@username = username
	# end
end