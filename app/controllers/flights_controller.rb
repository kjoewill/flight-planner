class FlightsController < ApplicationController

  def new
    @flight = Flight.new
  end

  def create
    binding.pry
  end

  private

    def flight_params
      params.require(:flight).permit(:date, :airplane_id, :origin_airport_id, :destination_airport_id)
    end

end
