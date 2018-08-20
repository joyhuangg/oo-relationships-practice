class Actor
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name:)
    # @characters = characters
    # @movies = movies
    # @episodes = episodes
    @name = name
    @@all << self
  end

  # def add_character(character)
  #   @characters << character
  # end

  def characters
    Character.all.select {|character| character.actor == self}
  end

  def movies
    result = []
    characters.each {|character| result.concat(character.movies)}
    result.uniq
  end

  def episodes
    result = []
    characters.each {|character| result.concat(character.episodes)}
    result.uniq
  end

  def shows
    episodes.map {|episode| episode.show}.uniq
  end

  # - should return which actor has the most different characters played. (probably meryl streep)
  def self.most_characters
    Actor.all.max_by {|actor| actor.characters.count}
  end
end
