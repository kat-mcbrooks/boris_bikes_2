require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

end

#  Add a test to your bike_spec.rb file that expects Bike instances to respond_to the method working?