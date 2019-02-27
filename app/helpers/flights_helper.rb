module FlightsHelper

  def google_maps_url (origin, destination)
    o_lat = origin[:lat].to_s
    o_long = origin[:long].to_s
    d_lat = destination[:lat].to_s
    d_long = destination[:long].to_s

    "https://maps.googleapis.com/maps/api/staticmap?size=1100x795&markers=color:red|label:1|#{o_lat},#{o_long}&markers=color:red|label:2|#{d_lat},#{d_long}&path=color:0x0000ff|weight:5|geodesic:true|#{o_lat},#{o_long}|#{d_lat},#{d_long}&key=#{ENV['GOOGLE_MAPS_API_KEY']}"

  end

end
