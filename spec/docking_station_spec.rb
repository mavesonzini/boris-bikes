require 'docking_station_class'

describe DockingStation do
it { is_expected.to respond_to :release_bike }


# it "releases a bike" do
#   expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
# end

# it "releases a bike that works" do
#   expect(DockingStation.new.release_bike).to be_working
# end

it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

it "raises an error when dock empty" do
expect { subject.release_bike }.to raise_error("No bikes")
end

it "raises an error when dock is full" do

  expect { 2.times { subject.dock(Bike.new) } }.to raise_error("Dock full")
end


end
