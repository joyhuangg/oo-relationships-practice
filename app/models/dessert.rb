class Dessert
  attr_accessor :bakery, :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(bakery:, name:)
    @bakery = bakery
    @name = name
    @@all << self
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

  #fix this and the way i initialized ingredients and Desserts
  #fix shopping list as well
  def calories
    result = 0
    ingredients.each {|ingredient| result += ingredient.calorie_count}
    result
  end

end
