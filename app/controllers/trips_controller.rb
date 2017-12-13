class TripsController < ApplicationController

  def index
    destination_object = Destination.new
    @trips = destination_object.get_all()
  end

  def show
    @destination = Destination.find(params[:id])
  end
end
