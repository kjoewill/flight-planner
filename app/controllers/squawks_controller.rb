class SquawksController < ApplicationController

  def new
    @squawk = Squawk.new(airplane_id: params[:airplane_id])
    @airplane = Airplane.find(params[:airplane_id])
  end

  def create
    @squawk = Squawk.new(squawk_params)
    @squawk.airplane_id = params[:airplane_id]
    @squawk.save
    redirect_to airplanes_path
  end


  private

    def squawk_params
      params.require(:squawk).permit(:airplane_id, :text)
    end

end
