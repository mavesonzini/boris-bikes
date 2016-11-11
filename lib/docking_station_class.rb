require_relative "bike_class"

class DockingStation
  def release_bike
    fail "No bikes"
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

  # def empty?
  #
  # end

end
