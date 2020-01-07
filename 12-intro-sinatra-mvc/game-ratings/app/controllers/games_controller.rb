class GamesController < ApplicationController

	get '/games' do
    "List of games"
  end

  get '/games/:id' do
    binding.pry
  end

end
