class Project
  @@all = []
  attr_accessor :user, :name, :pledge_goal_amount, :description

  def self.all
    @@all
  end

  def initialize(user:, name:, pledge_goal_amount:, description:"")
    @user = user
    @name = name
    @pledge_goal_amount = pledge_goal_amount
    @description = description
    @@all << self
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
  end

  def donated_amount
    sum = 0
    pledges.each {|pledge| sum += pledge.amount}
    sum
  end

  def self.no_pledges
    Project.all.select {|project| project.pledges.empty?}
  end

  def self.above_goal
    Project.all.select {|project| project.donated_amount >= project.pledge_goal_amount}
  end

  def self.most_backers
    Project.all.max_by {|project| project.pledges.count}
  end
end
