require_relative 'piece'

class Board
  def initialize(grid = Array.new(8){Array.new(8)})
    @grid = grid
  end
   
  def move_piece(start_pos,end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos
    pieces = @grid[start_row][start_col]
    @grid[end_row][end_col]=pieces
    @grid[start_row][start_col] = nil
    p @grid
  end
   
  def display
    @board.each do |row|
      p row
    end
  end
   
   
  def populate
    (0..7).each do |row|
      if row == 0 || row == 1 || row == 6 || row == 7
        (0..7).each do |col|
          @grid[row][col]=Piece.new
        end
      end
    end
    p @grid
  end

end


