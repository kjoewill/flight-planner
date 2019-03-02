class AirplanesController < ApplicationController

  def index
    @airplanes = Airplane.all
  end

  def show
    @airplane = Airplane.find(params[:id])
  end

end
