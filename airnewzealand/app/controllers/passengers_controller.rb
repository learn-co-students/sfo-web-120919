class PassengersController < ApplicationController
  def index
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def new
  end

  def edit
  end
end
