class User
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name:)
    @name = name
    @@all << self
  end

  def projects
    Project.all.select {|project| project.user == self}
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end

  def highest_pledge
    pledges.max_by {|pledge| pledge.amount}
  end

  def self.highest_pledge
    User.all.max_by { |user| user.highest_pledge.amount}
  end

  def self.multi_pledger
    User.all.select {|user| user.pledges.count > 1}
  end

  def self.project_creator
    User.all.select {|user| !user.projects.empty?}
  end

end
