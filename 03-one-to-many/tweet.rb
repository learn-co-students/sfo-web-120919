# Tweet class definition
class Tweet
	attr_reader :message, :user
	@@all = []

	def initialize(message, user)
		if message.length <= 150
			@message = message
			@user = user
			@@all << self
		end
	end

	def self.all
		@@all
	end

	def self.print_tweets
		# These will return the same thing v
		# @@all
		# self.all
		# all

		@@all.each do |tweet|
			puts tweet.message
		end
	end
end