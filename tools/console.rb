# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Picasso", 10)
l2 = Lifter.new("Mike", 20)
l3 = Lifter.new("Frida", 40)

g1 = Gym.new("SFMOMA")
g2 = Gym.new("Museum of Britist Art")
g3 = Gym.new("Louvre")

l1.new_gym(10, g1)
l1.new_gym(10, g2)

l2.new_gym(15, g2)

l3.new_gym(20, g3)

binding.pry

puts "Gains!"
