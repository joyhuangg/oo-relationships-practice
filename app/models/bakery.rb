class Bakery
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name:)
    @name = name
    @@all << self
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    result = []
    desserts.map {|dessert| result.concat(dessert.ingredients)}
    result
  end

  def average_calories
    sum = 0
    desserts.each {|dessert| sum += dessert.calories}
    sum/desserts.length
  end

  def shopping_list
    ingredients.map {|ingredient| ingredient.name}
  end

end
