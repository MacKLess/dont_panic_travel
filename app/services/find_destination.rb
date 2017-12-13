class Destination

  def initialization(planet)
    @planet = planet
    @location = location
  end
  #
  # def self.get_all
  #   response = HTTParty.get('http://api.localhost:3000/destinations')
  #   response
  # end

  def self.get_all
    response = RestClient::Request.execute(method: :get, url: "http://api.localhost:3000/destinations")
    return JSON.parse(response)
  end


  # def get_planet
  #   response = HTTParty.get('http://api.localhost:3000/destinations?planet=' + @planet )
  #   response['planet']
  # end
  #
  # def get_location
  #   response = HTTParty.get('http://api.localhost:3000/destinations?location=' + @location)
  #   response['location']
  # end
end
