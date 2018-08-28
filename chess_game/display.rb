require 'colorize'
require_relative 'board'
require_relative 'piece'


class Display
  attr_reader


  # def initialize(board)
  #   @board = board
  # end

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




end


if __FILE__ == $PROGRAM_NAME

  b= Board.new
  b.populate
  b.display
end
