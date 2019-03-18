require_relative "piece.rb"
require "byebug"

class Board
  def initialize
    @layout = Array.new(8) { Array.new(8, nil) }
    populate_pieces
  end

  def move_piece(start_pos, end_pos)
    ##update 2d grid
    ##update moved piece's POS

    ##raise exception if no piece @ start_pos
    ##raise exception if piece cannot move to end_pos
  end

  def populate_pieces
    queen_locs = [[0, 4], [7, 4]]
    queen_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "Q")
    end

    king_locs = [[0, 3], [7, 3]]
    king_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "K")
    end

    bishop_locs = [[0, 2], [0, 5], [7, 2], [7, 5]]
    bishop_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "B")
    end

    knight_locs = [[0, 1], [0, 6], [7, 1], [7, 6]]
    knight_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "N")
    end

    castle_locs = [[0, 0], [0, 7], [7, 0], [7, 7]]
    castle_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "C")
    end

    pawn_locs = [[1, 0], [1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [6, 0], [6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7]]
    pawn_locs.each do |loc|
      x, y = loc
      @layout[x][y] = Piece.new(loc, "P")
    end
  end
end
