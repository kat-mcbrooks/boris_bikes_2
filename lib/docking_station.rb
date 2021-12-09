require_relative 'bike' # need to load the file which establishes the Bike class, so we can create a new instance within the release_bike method at the docking station

class DockingStation
  attr_reader :bike
  
  def initialize
    @bikes_available = false #setting the docking station empty/false to begin with
  end

  def release_bike
    # if @bikes_available = true
    #   Bike.new
    Bike.new #create new instance of the Bike variable when we call release_bike method on dockingstation
  end
  
  def dock(bike)
    @bikes_available = true # so that the raise error message won't raise if we dock a bike to the station
    @bike = bike #use an instance variable so that we can add a specific instance of a bike e.g. "your bike"
  end
  
  def charge
    if @bikes_available == false
      raise "No bikes here!" 
    else 
      release_bike
    end
  end 
  # def bike # this is no longer needed as we're using attr_reader. this method returns the bike back to the user i.e. returns the bike we docked
    # @bike
  # end
  
end



