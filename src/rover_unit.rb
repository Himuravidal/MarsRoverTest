require_relative './coordinates'

class RoverUnit
  attr_reader :direction, :position

  def initialize(initial_coordinate, current_position = [0, 0])
    @direction = initial_coordinate
    @position = current_position
  end

  def rotate_left
    @direction = @direction.rotate_left
  end

  def rotate_right
    @direction = @direction.rotate_right
  end

  def move
    @position = @direction.move(@position)
  end

  def to_s
    puts "#{position[0]} #{position[1]} #{direction}"
  end
end
