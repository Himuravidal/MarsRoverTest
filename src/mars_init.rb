require_relative './rover_unit'
require_relative './command'
plateau = ARGF.gets

while !ARGF.eof
  rover_initial_position = ARGF.gets
  position = rover_initial_position.split[0, 2]
  coordinates = Coordinates.from_s(rover_initial_position.split[2])

  rover = RoverUnit.new(coordinates, position)
  Command.new(rover).command ARGF.gets

  puts rover
end

puts '===============-================='