require "singleton"
require "./slideable.rb"

class Piece
  attr_reader :type
  attr_accessor :position

  def initialize(pos, board, color)
    @position = pos
    @board = board
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

class Rook < Piece
  include Slideable

  def move_dirs
    move_rook = horizontal_dirs
  end
end

class Bishop < Piece
  include Slideable

  def move_dirs
    move_bishop = diagonal_dirs
  end
end

class Queen < Piece
  include Slideable
  # Slideable::HORIZONTAL_DIRS #=>> horizontal_dirs
  def move_dirs #array of possible moves
    move_queen = horizontal_dirs + diagonal_dirs
  end
end

class Knight < Piece
  include Stepable

  def move_dirs
    move_knight = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, -1], [-2, 1]]
  end
end

class King < Piece
  include Stepable

  def move_dirs
    move_king = [[0, 1], [0, -1], [1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1], [-1, 0]]
  end
end

class Pawn < Piece
end
