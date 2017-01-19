require './vehicle.rb'
require './plane.rb'
require'./firetruk.rb'


count = Counter.new
10.times {v = Vehicle.new}
puts count.value

puts "Plane"
count2 = Counter.new
10.times {p = Plane.new}
puts count.value

puts "firetruk"
count3 = Counter.new
10.times {f = Firetruck.new}
puts count.value
