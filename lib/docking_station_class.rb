require_relative "bike_class"

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes" unless @bikes.count >= 1
    @bike = @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if @bikes.count == 20
    @bikes << bike
    @bike = bike
  end

end
