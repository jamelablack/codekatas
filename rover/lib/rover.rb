class Rover
  attr_accessor :coords, :direction

  def initialize(coords, direction)
    @coords = coords
    @direction = direction
  end

  def move(movement)
    case direction
    when 'N'
      move_north(movement)
    when 'S'
      move_south(movement)
    end
  end

  def move_north(movement)
    case movement
    when 'f'
      self.coords = [coords.first, coords.last + 1]
    when 'b'
      self.coords = [coords.first, coords.last - 1]
    when 'r'
      self.direction = 'E'
    when 'l'
      self.direction = 'W'
    end
  end


  def move_south(movement)
    case movement
    when 'f'
      self.coords = [coords.first, coords.last - 1]
    when 'b'
      self.coords = [coords.first, coords.last + 1]
    when 'r'
      self.direction = 'W'
    when 'l'
      self.direction = 'E'
    end
  end

end
