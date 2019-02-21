class SessionsController < ApplicationController

  def new
  end

  def create
    @pilot = Pilot.find_by(:username => params[:username])
    if @pilot && @pilot.authenticate(params[:password])
      session[:user_id] = @pilot.id
      redirect_to root_path
    else
      render 'sessions/new'
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
