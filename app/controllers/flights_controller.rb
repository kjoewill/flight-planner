class FlightsController < ApplicationController

  def new
    @flight = Flight.new
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def create
    @flight = Flight.new(flight_params)
    @flight.pilot_id = current_user.id
    if !@flight.valid?
      render :new
    else
      @flight.save
      redirect_to @flight
    end
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def update
    flight = Flight.find(params[:id])
    flight.update(flight_params)
    redirect_to flight
  end

  def most_recent
    @flight = Flight.completed.last
    render :show
  end

  private

    def flight_params
      params.require(:flight).permit(:date, :airplane_id, :origin_airport_id, :destination_airport_id, :flown)
    end

end

=begin

def create
  ride = Ride.new( user_id: current_user.id, attraction_id: attraction_params[:id] )
  error_msg = ride.error_msg
  if !error_msg.blank?
    flash[:error] = error_msg
    redirect_to user_path(current_user.id)
  else
    ride.save
    user = User.find(current_user.id)
    user.take_ride(ride)
    flash[:success] = "Thanks for riding the #{ride.attraction_name}!"
    redirect_to user_path(current_user.id)
  end
end


date: flight_params[:date], pilot_id: current_user.id, airplane_id: flight_params[:airplane_id], origin_airport_id: flight_params[:origin_airport_id], destination_airport_id: flight_params[:destination_airport_id])

=end
