require "singleton"
require "./slideable.rb"

class Piece
  attr_reader :type
  attr_accessor :position

  def initialize(pos, color) #add board back in here
    @position = pos
    #@board = board
    @color = color
  end

  def inspect
    @type
  end

  def moves
  end

  def move_piece!(color, start_pos, end_pos)
  end
end

# class Rook < Piece
#   include Slideable
# end

# class Bishop < Piece
#   include Slideable
# end

class Queen < Piece
  include Slideable
  # Slideable::HORIZONTAL_DIRS #=>> horizontal_dirs
  def move_dirs #array of possible moves
    move_queen = horizontal_dirs + diagonal_dirs
  end
end

# class Knight < Piece
#   include Stepable
# end

# class King < Piece
#   include Stepable
# end

# class Pawn < Piece
# end

# class NullPiece < Piece
#   include Singleton
# end

module Stepable
end
