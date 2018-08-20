class Movie
  @@all = []
  attr_accessor :title

  def self.all
    @@all
  end

  def initialize(title:)
    @title = title
    @@all << self
  end

  def characters
    Character.all.select {|character| character.movies.include?(self)}
  end

  def actors
    characters.map {|character| character.actor}.uniq
  end

  def self.most_actors
    Movie.all.max_by {|movie| movie.actors.count}
  end
end
