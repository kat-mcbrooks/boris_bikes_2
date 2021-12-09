require_relative 'bike' # need to load the file which establishes the Bike class, so we can create a new instance within the release_bike method at the docking station

class DockingStation
  def release_bike
  Bike.new #create new instance of the Bike variable when we call release_bike method on dockingstation
  end
  def dock(bike)
  end
  def bike
  end
end