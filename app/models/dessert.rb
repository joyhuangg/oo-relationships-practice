class Dessert
  attr_accessor :bakery, :name, :calories
  @@all = []

  def self.all
    @@all
  end

  def initialize(bakery:, name:, calories:)
    @bakery = bakery
    @name = name
    @calories = calories
    @@all << self
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

end
