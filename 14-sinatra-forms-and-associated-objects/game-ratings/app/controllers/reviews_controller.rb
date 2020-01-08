class ReviewsController < ApplicationController
	get '/reviews/new' do
		@game = Review.new
		erb :"reviews/new"
	end

	# Create in CRUD
  post '/reviews' do
    # game = Game.new(title: params[:game][:title], description: params[:game][:description], image_url: params[:game][:image_url], rating: params[:game][:rating])
    game = Game.new(params[:game].except(:reviews))

    params[:game][:reviews].each do |review_details|
      review = Review.new(review_details)
      review.game = game

      review.save
    end

    game.save
    redirect "/games"
  end

end
