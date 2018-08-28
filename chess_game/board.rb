require_relative 'piece'

class Board
  def initialize(grid = Array.new(8){Array.new(8)})
    @grid = grid
  end

  def move_piece(start_pos, end_pos)
    # array deconstruction
    start_row, start_col = start_pos
    end_row, end_col = end_pos

    if end_row > 7 || end_col > 7
      raise "End position not located on board."
    end

    pieces = @grid[start_row][start_col]
    raise "No piece to move" if pieces.nil?

    @grid[end_row][end_col] = pieces

    @grid[start_row][start_col] = NullPiece.new
    p @grid

    # raise errors if...
      # 1.  start_pos has no piece. XXXXXX
      # 2. end_pos is not located on the baord


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
          @grid[row][col] = Piece.new
        end
      else
        (0..7).each do |col|
          @grid[row][col] = NullPiece.instance
        end
      end
    end
    p @grid
  end

end
