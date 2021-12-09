require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new 
      subject.dock(bike) 
      expect(subject.release_bike).to eq bike   
    end
  end

  describe '#release_bike' do
   it "raises an error if no bikes available" do
    # no bikes at docking station
    expect { subject.release_bike }.to raise_error("No bikes here!") 
   end 
  end

  it { is_expected.to respond_to(:dock).with(1).argument } # tests that docking station instances respond to dock method with one argument e.g. (bike)

  it "docks something" do
    bike = Bike.new # better to use Bike.new here rather than subject.release_bike because we are testing on
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new 
    subject.dock(bike) 
    expect(subject.bike).to eq bike
  end




  # it "charges the user and does not raise an error" do
  #   bike = Bike.new 
  #   subject.dock(bike) 
  #   expect { subject.charge }.to_not raise_error 
  # end
  
  

end



