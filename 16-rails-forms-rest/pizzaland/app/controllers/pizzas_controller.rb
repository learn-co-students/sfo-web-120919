class PizzasController < ApplicationController

	def index
		@pizzas = Pizza.all
		render 'pizzas/index'
	end

	# Sinatra
	# get '/pizzas/:pizza_id' do
	# 	params[:pizza_id]
	# end

	def new 
		@pizza = Pizza.new
	end

	def show
		@pizza = Pizza.find(params[:id])

		# render 'pizzas/show'
	end

	private

	def pizza_params
		
	end

end
