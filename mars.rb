# tray to use .rb for mars test

puts "\nThis is the first try to make.\nThe marst test with ruby version 3.0.1 \n"

# class for cordinates
class Cordinates
  def initialize(xcordinate, ycordinate, direction)
    @x = xcordinate
    @y = ycordinate
    @direction = direction
  end

  def move(direction) 
    case direction
    when 'L'
      case @direction
      when 'N'
        @direction = 'W'
      when 'W'
        @direction = 'S'
      when 'S'
        @direction = 'E'
      when 'E'
        @direction = 'N'
      end
    when 'R'
      case @direction
      when 'N'
        @direction = 'E'
      when 'E'
        @direction = 'S'
      when 'S'
        @direction = 'W'
      when 'W'
        @direction = 'N'
      end
    when 'M'
      case @direction
      when 'N'
        @y += 1
      when 'S'
        @y -= 1
      when 'E'
        @x += 1
      when 'W'
        @x -= 1
      end
    else
      puts 'Invalid option input'
    end
  end

  def getXCordinate()
    @x
  end

  def getYcodinate()
    @y
  end

  def get_direction()
    @direction
  end

  def getFullCordinate()
    puts "#{@x}, #{@y}, #{@direction}"
  end
end

position = Cordinates.new(3, 3, 'E')

 # First case
position.move('L') #0
position.move('M') #1
position.move('L') #2
position.move('M') #3
position.move('L') #4
position.move('M') #5
position.move('L') #6
position.move('M') #7
position.move('M') #8

position.move('M') #0
position.move('M') #1
position.move('R') #2
position.move('M') #3
position.move('M') #4
position.move('R') #5
position.move('M') #6
position.move('R') #7
position.move('R') #8
position.move('M') #9

puts position.getFullCordinate
