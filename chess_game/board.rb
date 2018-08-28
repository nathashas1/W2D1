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

    @grid[start_row][start_col] = NullPiece.instance
    p @grid

    # raise errors if...
      # 1.  start_pos has no piece. XXXXXX
      # 2. end_pos is not located on the baord


  end

  def display
    # @board.each do |row|
Display.render(@grid)
    #   p row
    # end
  end


  def populate
    (0..7).each do |row|
      # if in row 0 and 1,
      if row == 0 || row == 1
        (0..7).each do |col|
          piece = Piece.new
          @grid[row][col] = piece.to_s
        end

      elsif row == 6 || row == 7
        (0..7).each do |col|
          piece = Piece.new
          @grid[row][col] = piece.to_s
        end
      else
        (0..7).each do |col|
          @grid[row][col] = NullPiece.instance
        end
      end
    end
    @grid
  end

  def valid_pos?(pos)
    pos.all? { |n| (0..7).include?(n) }
  end

end
