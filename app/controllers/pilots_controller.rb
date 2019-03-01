class PilotsController < ApplicationController

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new
    @pilot.username = params[:pilot][:username]
    @pilot.password = params[:pilot][:password]
    if @pilot.save
      session[:user_id] = @pilot.id
      redirect_to root_path
    else
      render 'pilots/new' #Show the form
    end
  end

end
