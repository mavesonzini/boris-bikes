require 'docking_station_class'

describe DockingStation do

  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }
    it "releases a bike" do
      expect{ subject.release_bike }.to raise_error "No bikes"
    end
    it "releases the same bike as the one we dock" do
      bike = Bike.new
      subject.dock(bike,"working")
      expect(subject.release_bike).to eq [bike, "working"]
    end
  end


  describe "#dock" do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike, "working")).to eq [bike, "working"]
    end
    it "raises an error when dock is full" do
      expect { (DockingStation::Default_Capacity + 1).times { subject.dock(Bike.new,"broken") } }.to raise_error("Dock full")
    end
  end

  it "Sets the capacity" do
    expect(DockingStation.new(30).capacity).to eq 30
  end

  it "user can dock a working bike" do
    bike = Bike.new
    subject.dock(bike, "working")
    expect(subject.bikes).to include(bike => "working")
  end

  it "user can dock a broken bike" do
    bike = Bike.new
    subject.dock(bike, "broken")
    expect(subject.bikes).to include(bike => "broken")
  end

end
