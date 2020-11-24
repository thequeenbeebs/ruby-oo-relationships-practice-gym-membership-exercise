# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

stephanie = Lifter.new("Stephanie", 150)
alex = Lifter.new("Alex", 300)
jonathan = Lifter.new("Jonathan", 250)
val = Lifter.new("Val", 175)
blaire = Lifter.new("Blaire", 145)

nysc = Gym.new("New York Sports Club")
planet = Gym.new("Planet Fitness")
equinox = Gym.new("Equinox")
crunch = Gym.new("Crunch")
la_fitness = Gym.new("LA Fitness")

mem1 = Membership.new(500, stephanie, equinox)
mem2 = Membership.new(20, blaire, planet)
mem3 = Membership.new(50, alex, nysc)
mem4 = Membership.new(60, jonathan, crunch)
mem5 = Membership.new(150, val, la_fitness)
mem6 = Membership.new(100, stephanie, nysc)

binding.pry

puts "Gains!"
