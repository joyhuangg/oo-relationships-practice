class Character
  @@all = []
  attr_accessor :actor, :name
  attr_reader :movies, :episodes

  def self.all
    @@all
  end

  def initialize(actor:, name:, movies:[], episodes:[])
    @actor = actor
    @name = name
    @movies = movies
    @episodes = episodes
    @@all << self
  end


  def add_movie(movie)
    @movies << movie
  end

  def add_episode(episode)
    @episodes << episode
  end

  def shows
    @episodes.map {|episode| episode.show}.uniq
  end

  # - should return which character of film/television appears in the most films or tv shows
  def self.most_appearances
    Character.all.max_by{|character| (character.movies.count + character.shows.count)}
  end
end
