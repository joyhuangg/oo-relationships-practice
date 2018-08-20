class Show
  @@all = []
  attr_accessor :title

  def self.all
    @@all
  end

  def initialize(title:)
    @title = title
    @@all << self
  end

  def episodes
    Episode.all.select {|episode| episode.show == self}
  end

  def characters
    result = []
    episodes.each {|episode| result.concat(episode.characters)}
    result.uniq
  end

  def actors
    characters.map{|character| character.actor}
  end

  # - should return TV shows that share the same name as a movie
  def self.on_the_big_screen
    Show.all.select {|show| Movie.all.any? {|movie| movie.title == show.title}}
  end
end
