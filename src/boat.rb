class Boat
  attr_reader :x, :y, :length, :isVertical, :positions

  # Takes in a hash with keys {x, y, length, isVertical}
  def initialize(state)
    @x = state[:x]
    @y = state[:y]
    @length = state[:length]
    @isVertical = state[:isVertical]

    # true if the position has been hit
    @positions = {}

    (0...@length).each { |i|
      x = @isVertical ? @x : (@x + i)
      y = @isVertical ? (@y + i ) : @y
      @positions["#{x},#{y}"] = false
    }
  end

  def key
    return "#{@x},#{@y}"
  end

  # A boat is sunk if all positions have been hit
  def sunk?
    return @positions.values.all?
  end

  def attack(x, y)
    key = "#{x},#{y}"
    return false unless @positions.has_key?(key)
    @positions[key] = true
  end
end
