require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike # can also use Bike.new here
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it "docks something" do
    bike = Bike.new # better to use Bike.new here rather than subject.release_bike because we are testing on
    expect(subject.dock(bike)).to eq bike
  end
end



