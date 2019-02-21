class SessionsController < ApplicationController

  def new
  end

  def create
    @pilot = Pilot.find_by(:username => params[:username])
    session[:user_id] = @pilot.id

    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
