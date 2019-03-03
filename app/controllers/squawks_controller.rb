class SquawksController < ApplicationController

  def new
    @squawk = Squawk.new(airplane_id: params[:airplane_id])
    @airplane = Airplane.find(params[:airplane_id])
  end

  def create
    @squawk = Squawk.new(squawk_params)
    @squawk.airplane_id = params[:airplane_id]
    @squawk.save
    redirect_to airplane_squawks_path(@squawk.airplane)
  end

  def index
    @airplane = Airplane.find(params[:airplane_id])
    @squawks = @airplane.squawks
  end

  private

    def squawk_params
      params.require(:squawk).permit(:airplane_id, :text)
    end

end
