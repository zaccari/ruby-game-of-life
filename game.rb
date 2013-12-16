require './board'

class Game
  def initialize(height = 15, width = 30)
    @board = Board.new(height, width)
    @board.seed!
  end

  # Run the game.
  def run!
    while true
      @board.print
      @board = board.generate_new
      sleep 0.1
    end
  end
end