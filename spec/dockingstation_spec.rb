require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike } # one-liner syntax assumes the subject i.e. is_expected == expect(subject)

  it { is_expected.to respond_to(:dock).with(1).argument } # tests that docking station instances respond to dock method with one argument e.g. (bike)

  describe '#release_bike' do
    it 'releases a bike' do #tests that docking station will release a bike if a bike has already been docked
      bike = Bike.new 
      subject.dock(bike) #subject == DockingStation.new
      expect(subject.release_bike).to eq bike   
    end
  end

  describe "#release_bike" do
   it "raises an error if no bikes available" do
    # in this test, we do not dock a bike, as we are testing when no bikes at station
    expect { subject.release_bike }.to raise_error("No bikes here!") 
   end 
  end
  
  it "docks a bike" do
    bike = Bike.new 
    expect(subject.dock(bike)).to eq bike #tests that dock method on dstation will remember/store the bike instance and return the contents of its memory
  end

  it 'returns docked bikes' do
    bike = Bike.new #create new bike
    subject.dock(bike) #dock this bike to station
    expect(subject.bike).to eq bike # we want to see the bike we just docked if we run bike method on a station
  end

  describe "#dock" do
    it 'raises error when station has reached capacity' do
      bike = Bike.new
      subject.dock(bike) #dock first bike
      expect{ subject.dock (Bike.new) }.to raise_error "Station full!" #try to dock a second instance of Bike.new
    end
  end
end