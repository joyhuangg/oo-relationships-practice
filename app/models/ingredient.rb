class Ingredient
  @@all = []
  attr_accessor :dessert, :name

  def self.all
    @@all
  end

  def initialize(dessert:, name:)
    @dessert = dessert
    @name = name
    @@all << self
  end

  def bakery
    self.dessert.bakery
  end
  def self.find_all_by_name(given_ingredient)
    Ingredient.all.select {|ingredient| ingredient.name.include?(given_ingredient)}
  end
end
