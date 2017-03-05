class FlightsController < ApplicationController

  def find
    @query = params.permit(:from, :to, :depart_date)
    @date = Date.parse(@query[:depart_date]).strftime("%A, %B %e %Y")

    @flights = Flight.query_flights(@query)
    
    render 'flights'
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
