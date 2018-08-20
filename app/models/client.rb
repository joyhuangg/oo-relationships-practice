class Client
  @@all = []
  attr_reader :trainer
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name:, trainer:nil)
    @name = name
    @trainer = trainer
    @@all << self
  end

  def locations
    trainer.locations
  end
  
  def assign_trainer(trainer)
    @trainer = trainer
  end

end
