class GamesController < ApplicationController

	# Read in CRUD
	get '/games' do
		@games = Game.all

		erb :"games/index"
	end

	# Create in CRUD
	get '/games/new' do
		@game = Game.new
		erb :"games/new"
	end

	# Read in CRUD
	get '/games/:id' do
		@game = Game.find(params[:id])

		erb :"games/show"
	end

	# Create in CRUD
	post '/games' do
		@game = Game.new(params)
		
		if params[:title] == "" && params[:description] == ""
			# Unsuccessful post request
			erb :"games/new"
		else
			# Successful post request
			@game.save
			redirect "/games/#{@game.id}"
		end
	end

	get '/games/:id/edit' do
		@game = Game.find(params[:id])

		erb :"/games/edit"
	end

	patch '/games/:id' do
		@game = Game.find(params[:id])
		@game.update(params[:game])
		@game.update(params)

		redirect "/games/" + @game.id.to_s
	end

	delete '/games/:id' do
		@game = Game.find(params[:id])
		@game.destroy

		redirect "/games"
	end
end
