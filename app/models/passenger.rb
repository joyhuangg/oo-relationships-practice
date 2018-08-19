class Passenger
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name:)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}.uniq
  end

  def total_distance
    sum = 0
    rides.each {|ride| sum += ride.distance}
    sum
  end

  def self.premium_members
    Passenger.all.select {|passenger| passenger.total_distance > 100}
  end
end
