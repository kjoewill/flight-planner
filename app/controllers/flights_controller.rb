class FlightsController < ApplicationController

  def new
    @flight = Flight.new
  end

  def create
    binding.pry
  end

end
