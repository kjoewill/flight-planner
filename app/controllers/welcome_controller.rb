class WelcomeController < ApplicationController
  before_action :authentication_required

  def index
      @pilot = Pilot.find(session[:user_id])
  end

end
