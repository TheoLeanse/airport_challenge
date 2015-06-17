require_relative 'plane'

class Airport
  def initialize
    @hangar = [Plane.new]
  end

  def land plane
    @hangar.push plane.land
  end

  def fly_away
    return @hangar.pop
  end

end
