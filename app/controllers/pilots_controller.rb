class PilotsController < ApplicationController

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new
    @pilot.username = params[:pilot][:username]
    if @pilot.save
      #Need to login
      redirect_to root_path
    else
      render 'pilots/new' #Show the form
    end
  end

end
