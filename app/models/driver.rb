class Driver
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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}.uniq
  end

  def mileage
    sum = 0
    rides.each {|ride| sum += ride.distance}
    sum
  end

  def self.mileage_cap(distance)
    Driver.all.select {|driver| driver.mileage > distance}
  end
end
