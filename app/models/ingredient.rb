class Ingredient
  @@all = []
  attr_accessor :dessert, :name, :calorie_count

  def self.all
    @@all
  end

  def initialize(dessert:, name:, calorie_count:)
    @dessert = dessert
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  def bakery
    self.dessert.bakery
  end
  def self.find_all_by_name(given_ingredient)
    Ingredient.all.select {|ingredient| ingredient.name.include?(given_ingredient)}
  end
end
