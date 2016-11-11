require_relative "bike_class"

class DockingStation
  attr_reader :bike
  Default_Capacity = 20
  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes" if empty?
    @bike = @bikes.pop
  end


  def dock(bike)
    fail "Dock full" if full?
    @bikes << bike
    @bike = bike
  end


  private
  def empty?
    @bikes.count == 0
  end

  def full?
    @bikes.count >= Default_Capacity
  end


end
