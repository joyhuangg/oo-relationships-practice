class Trainer
  @@all = []
  attr_accessor :salary, :name, :locations

  def self.all
    @@all
  end

  def initialize(name:, salary:1000, locations:[])
    @name = name
    @salary = salary
    @locations = locations
    @@all << self
  end
  # 
  # def locations
  # end

  def add_location(location)
    @locations << location
  end

  def clients
    Client.all.select{|client| client.trainer == self}
  end

  def self.most_clients
    trainer = Trainer.all.max_by {|trainer| trainer.clients.count}
    puts "#{trainer.name} had the most clients, she gets a bonus of 100."
    trainer.salary += 100
    puts "Their salary is now #{trainer.salary}"
  end
end
