class Ship
  attr_reader :position, :hits, :size

  def initialize position, direction, size = 1
    @direction = direction
    @position = position
    @size = size
    @hits = 0
  end

  def hit position
    return :miss if self.position != position 
    @hits+=1
    :hit
  end

  def sunk?
    @hits >= @size
  end
end