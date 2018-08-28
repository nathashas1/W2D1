require 'colorize'
require_relative 'board'
require_relative 'piece'
require_relative 'cursor'

class Display
  attr_reader :board, :cursor


  def initialize(cursor = Cursor.new([0,0]), board)
    @board = board
    @cursor = cursor
  end

  def self.render(grid)
    (0..7).map do |row|
      col = (0..7).map do |col|
        if grid[row][col].is_a?(NullPiece)
          " "
        else
          "#{grid[row][col]}"
        end
      end
      puts col.join(' ').colorize(:color => :light_blue, :background => :black)
    end
  end

  # @cursor.get_input

end


if __FILE__ == $PROGRAM_NAME

  b= Board.new
  b.populate
  cursor = Cursor.new([0,0], b)
  d = Display.new(cursor, b)
  cursor.get_input
end
