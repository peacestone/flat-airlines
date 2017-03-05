class FlightsController < ApplicationController

  def find
    @flights = Flight.query_flights(params.permit(:from, :to, :depart_date))
    render plain: @flights.inspect
  end

  def found
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
