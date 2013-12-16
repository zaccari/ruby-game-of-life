class Cell
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @alive = false
  end

  def coordinates
    [x, y]
  end

  def at?(at_x, at_y)
    x == at_x && y == at_y
  end

  # Checks if the cell is alive.
  def alive?
    @alive == true
  end

  # Set a cell to alive.
  def its_alive!
    @alive = true
  end

  # If the cell is printed, return a character based on
  # whether or not it is alive.
  def to_s
    alive? ? "\u25CF" : "\u0020"
  end
end