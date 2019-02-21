class PilotsController < ApplicationController

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new
    @pilot.username = params[:pilot][:username]
    @pilot.password = params[:pilot][:passwordexit]
    if @pilot.save
      session[:user_id] = @pilot.id
      redirect_to root_path
    else
      binding.pry
      render 'pilots/new' #Show the form
    end
  end

end
