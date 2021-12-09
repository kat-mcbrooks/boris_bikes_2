require_relative 'bike' # need to load the file which establishes the Bike class, so we can create a new instance within the release_bike method at the docking station

class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bikes here!" unless @bike #guard statement to raise error if no bikes in station
    @bike 
  end
  
  def dock(bike)
    @bikes_available = true # so that the raise error message won't raise if we dock a bike to the station
    @bike = bike #use an instance variable so that we can add a specific instance of a bike e.g. "your bike"
  end
  
end



