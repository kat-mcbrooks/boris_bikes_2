require_relative 'bike' # need to load the file which establishes the Bike class, so we can create a new instance within the release_bike method at the docking station

class DockingStation
  attr_reader :bike # use this shorthand instead of using a "getter" method to get the value of the bike instance  i.e. 'def bike, @bike, end' 

  def release_bike
    raise "No bikes here!" unless @bike #guard statement to raise error if no bikes in station
    @bike 
  end
  
  def dock(bike)
    raise "Station full!" if @bike #raises an error if a bike has been docked
    @bike = bike #instance variable so that dock method 'stores/remembers' the instance of bike which it has been passed e.g. "your_bike" and then returns it. links back up to the attr_reader at top
  end

end

# release_bike
# p station = DockingStation.new
# p station.dock(Bike.new)
# p station.dock(Bike.new)
# p station.release_bike
# p station.dock(Bike.new)



