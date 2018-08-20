class Episode
  @@all = []
  attr_accessor :show, :name, :season

  def self.all
    @@all
  end

  def initialize(show:, name:, season:)
    @name = name
    @show = show
    @season = season
    @@all << self
  end

  def characters
    Character.all.select {|character| character.episodes.include?(self)}
  end

  def actors
    characters.map {|character| character.actor}.uniq
  end
end
