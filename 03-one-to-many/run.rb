require 'pry'

require_relative './tweet'
require_relative './user'

coffee_dad = User.new("coffee_dad")
tea_dad = User.new("tea_dad")

tweet1 = Tweet.new("coffee is great", coffee_dad)
tweet2 = Tweet.new("love my morning coffee", coffee_dad)

tweet3 = Tweet.new("tea is great", tea_dad)
tweet4 = Tweet.new("love my morning tea", tea_dad)

binding.pry