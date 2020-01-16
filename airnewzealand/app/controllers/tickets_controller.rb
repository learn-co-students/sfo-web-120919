class TicketsController < ApplicationController
	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			redirect_to @ticket.passenger
			# redirect_to passenger_path(@ticket.passenger)
		else
			render :new
		end
	end

	private

	def ticket_params
		params.require(:ticket).permit(:date, :seat_num, :passenger_id, :flight_id)
	end
end
