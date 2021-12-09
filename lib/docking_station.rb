require_relative 'bike' # need to load the file which establishes the Bike class, so we can create a new instance within the release_bike method at the docking station

class DockingStation
  attr_reader :bike
  def release_bike
    Bike.new #create new instance of the Bike variable when we call release_bike method on dockingstation
  end
  
  def dock(bike)
    @bike = bike #use an instance variable so that we can add a specific instance of a bike e.g. "your bike"
  end
  
  # def bike # this is no longer needed as we're using attr_reader. this method returns the bike back to the user i.e. returns the bike we docked
    # @bike
  # end
end



