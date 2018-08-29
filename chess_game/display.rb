require 'colorize'
require_relative 'board'
require_relative 'piece'
require_relative 'cursor'

class Display
  attr_reader :board, :cursor_pos


  def initialize(cursor = Cursor.new([0,0]), board)
    @board = board
    @cursor_pos = cursor.cursor_pos
    p " this is the cursor RIGHT NOW #{@cursor_pos}"
  end

  def self.render(grid)

    # p grid
    grid.map.with_index do |row_el,row|
      grid[row].map.with_index do |el, pos|
        if [row, pos] == @cursor_pos
          p 'here'
          print "#{el.colorize(:red)}"
        elsif (row + pos).odd?
          print "#{el.black.on_blue}"
        else
          print "#{el}"
        end
      end
      puts "\n"
    end
    # result.join(' ')
  end


  def self.update_cursor(pos)
    @cursor_pos = pos
  end
end


if __FILE__ == $PROGRAM_NAME

  b = Board.new
  b.populate
  cursor = Cursor.new([0,0], b)
  d = Display.new(cursor, b)
  cursor.get_input
  b.display
end





###  OLD LOGIC FOR RENDERING BOARD #####
# (0..7).map do |row|
#   col = (0..7).map do |col|
#     if grid[row][col].is_a?(NullPiece)
#       " "
#     else
#       "#{grid[row][col]}"
#     end
#   end
#   puts col.join(' ').colorize(:color => :light_blue, :background => :black)
# end
