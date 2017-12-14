class Destination

  def initialization(planet)
    @planet = planet
    @location = location
  end
  #
  def get_all
    response = HTTParty.get('http://localhost:3001/destinations')
    response
    ## def methods (like find) or do a singular api call (index --> pulls just the location and planet)
  end

  def get_one(id)
    response = HTTParty.get('http://localhost:3001/destinations/' + id)
    response
    ## def methods (like find) or do a singular api call (index --> pulls just the location and planet)
  end

  def get_planet(planet)
    response = HTTParty.get('http://api.localhost:3000/destinations?planet=' + planet )
    response
    # response['planet']
  end

  def get_location(location)
    response = HTTParty.get('http://api.localhost:3000/destinations?location=' + location)
    response
    # response['location']
  end
end
