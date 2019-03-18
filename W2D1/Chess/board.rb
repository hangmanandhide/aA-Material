require_relative "piece.rb"
require "byebug"

class Board
  def initialize
    @layout = Array.new(8) { Array.new(8, nil) }
  end

  def move_piece(start_pos, end_pos)
    ##update 2d grid
    ##update moved piece's POS

    ##raise exception if no piece @ start_pos
    ##raise exception if piece cannot move to end_pos
  end
end
