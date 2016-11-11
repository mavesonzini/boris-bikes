require_relative "bike_class"
#comment
class DockingStation
  attr_reader :bike
  attr_reader :bikes
  attr_reader :capacity
  Default_Capacity = 20

  def initialize(capacity = Default_Capacity)
    @capacity = capacity
    bike1 = "a bike"
    @bikes = {}
  end

  def release_bike
    fail "No bikes" if empty?
    @bike = @bikes.shift
  end

  def dock(bike,state)
    fail "Dock full" if full?
    @bikes[bike]= state
    @bike = bike
    [bike, state]
  end

  private
  def empty?
    @bikes.count == 0
  end

  def full?
    @bikes.count >= Default_Capacity
  end


end
