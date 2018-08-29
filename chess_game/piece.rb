require 'singleton'
# require_relative 'board'

class Piece
  attr_reader :color


  def to_s
    ' ♟ '
  end
end

class NullPiece < Piece
  include Singleton

  def to_s
    '   '
  end
end



#
