# This module control the direction of the rovers
module Coordinates
  def self.from_s(direction)
    case direction
    when 'N'
      NORTH
    when 'E'
      EAST
    when 'W'
      WEST
    when 'S'
      SOUTH
    end
  end

  # class north add + 1 to axis y if theres move.
  class North
    def rotate_left
      WEST
    end

    def rotate_right
      EAST
    end

    def move(current_position)
      x = Integer(current_position[0])
      y = Integer(current_position[1]) + 1
      [x, y]
    end

    def to_s
      'N'
    end
  end

  # class East add + 1 to axis X if theres move.
  class East
    def rotate_left
      NORTH
    end

    def rotate_right
      SOUTH
    end

    def move(current_position)
      x = Integer(current_position[0]) + 1
      y = Integer(current_position[1])
      [x, y]
    end

    def to_s
      'E'
    end
  end

  # class West - 1 to axis X if theres move.
  class West
    def rotate_left
      SOUTH
    end

    def rotate_right
      NORTH
    end

    def move(current_position)
      x = Integer(current_position[0]) - 1
      y = Integer(current_position[1])
      [x, y]
    end

    def to_s
      'W'
    end
  end

  # class South - 1 to axis y if theres move.
  class South
    def rotate_left
      EAST
    end

    def rotate_right
      WEST
    end

    def move(current_position)
      x = Integer(current_position[0])
      y = Integer(current_position[1]) - 1
      [x, y]
    end

    def to_s
      'S'
    end
  end

  NORTH = North.new
  EAST = East.new
  WEST = West.new
  SOUTH = South.new
end
