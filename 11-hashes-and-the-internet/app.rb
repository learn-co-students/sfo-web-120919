require 'json'
require 'pry'
require 'rest-client'

def greeting
	puts
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "} Welcome to the BookWorm CLI! {"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts 
	puts "Enter a title or some keywords for books in which you're interested."
end

def get_books(url)
	response = RestClient.get(url)
	books_hash = JSON.parse(response)

	books_hash["items"].map do |book_info|
		title = books_hash["items"][0]["volumeInfo"]["title"]
		authors = books_hash["items"][0]["volumeInfo"]["authors"]
		description = books_hash["items"][0]["volumeInfo"]["description"]

		# {"title" => title, "authors" => authors, "description" => description}
		{title: title, authors: authors, description: description}
	end

	# Insert into database
end

def display_books(books)
	# books is an array of hashes
	books.each do |book|
		puts "*" * 50

		puts book[:title]
		puts book[:authors]
		puts book[:description]

		puts "+" * 50
	end
end

greeting()

user_input = gets.strip
url = "https://www.googleapis.com/books/v1/volumes?q=#{user_input}"
# url = "https://www.googleapis.com/books/v1/volumes?q=" + user_input

books = get_books(url)
display_books(books)

