class Gym
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end
  # Get a list of all gyms
  def self.all
    @@all
  end
  # Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end
  # Get a list of all the lifters that have a membership to a specific gym
  def lifters
    self.memberships.map {|membership| membership.lifter}
  end
  # Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    self.lifters.map {|lifter| lifter.name}
  end
  # Get the combined lift total of every lifter has a membership to that gym
  def lift_total
    all_lifters = self.lifters.map {|lifter| lifter.lift_total}
    all_lifters.sum
  end
end
