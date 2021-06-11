class Lifter
  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end
  # Get a list of all lifters
  def self.all
    @@all
  end
  # Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end
  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    self.memberships.map {|membership| membership.gym}
  end
  # Get the average lift total of all lifters
  def self.avg_lift
    all_lifts = self.all.map {|lifter| lifter.lift_total}
    all_lifts.sum / all_lifts.size
  end
  # Get the total cost of a specific lifter's gym memberships
  def gym_cost
    all_gym_costs = self.memberships.map {|membership| membership.cost}
    all_gym_costs.sum
  end
  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end
end
