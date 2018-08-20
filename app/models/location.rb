class Location
  @@all = []
  attr_accessor :location

  def self.all
    @@all
  end

  def initialize(location:)
    @location = location
    @@all << self
  end

  def self.least_clients
    Location.all.min_by {|location| location.clients}
  end

  def trainers
    Trainer.all.select {|trainer| trainer.locations.include?(self)}
  end

  def clients
    result = []
    trainers.each {|trainer| result.concat(trainer.clients)}
    result
  end

end
