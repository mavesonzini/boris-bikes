require 'docking_station_class'

describe DockingStation do

  describe "#release_bike" do

    it { is_expected.to respond_to :release_bike }

    it "releases a bike" do
      expect{ subject.release_bike }.to raise_error "No bikes"
    end

    it "releases the same bike as the one we dock" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  end


  describe "#dock" do

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "raises an error when dock is full" do
      expect { (DockingStation::Default_Capacity + 1).times { subject.dock(Bike.new) } }.to raise_error("Dock full")
    end

  end


end
