class Membership
  @@all = []

  attr_reader :cost, :lifter, :gym

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym

    @@all << self
  end
  # Get a list of all memberships
  def self.all
    @@all
  end
end
