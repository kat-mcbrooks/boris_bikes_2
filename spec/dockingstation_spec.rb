require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike # can also use Bike.new here
    expect(bike).to be_working
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

  it "charges the user and does not raise an error" do
    bike = Bike.new 
    subject.dock(bike) 
    expect { subject.charge }.to_not raise_error 
  end
  
  it "Tries to charge user and raises an error" do
    # no bikes at docking station
    expect { subject.charge }.to raise_error("No bikes here!") 
  end

end



