class TripsController < ApplicationController

  def index
    destination_object = Destination.new
    @trips = destination_object.get_all()
  end

  def show
    destination_id = params[:id]
    destination_object = Destination.new
    @trip = destination_object.get_one(destination_id)
  end

  def search_planet
    destination_id = params[:id]
    destination_object = Destination.new
    @destination = destination_object.get_planet(destination_id)
  end
end
