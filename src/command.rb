# this class control the rover commands
class Command
  def initialize(rover)
    @rover = rover
  end

  def command(command_line)
    command_line.each_char do |command|
      case command
      when 'L'
        @rover.rotate_left
      when 'R'
        @rover.rotate_right
      when 'M'
        @rover.move
      end
    end
  end
end
