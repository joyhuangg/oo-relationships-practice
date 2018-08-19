class Ride
  @@all = []
  attr_accessor :passenger, :driver, :distance

  def self.all
    @@all
  end

  def initialize(passenger:, driver:, distance:)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.average_distance
    sum = 0
    Ride.all.each {|ride| sum += ride.distance}
    sum/Ride.all.count
  end
end
