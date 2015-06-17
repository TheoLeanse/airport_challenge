require_relative 'plane'

class Airport
  def initialize
    @hangar = []
  end

  def land plane
    fail "Airport full" if full?
    @hangar.push plane
    plane.land
  end

  def take_off
    plane = @hangar.pop
    plane.take_off
  end

  def full?
    @hangar.count == capacity
  end

  def empty?
    @hangar.empty?
  end

  def capacity
    5
  end
end
