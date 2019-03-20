class NullPiece < Piece
  attr_reader :color, :symbol
  include Singleton

  def initialize
    @color = "rainbow"
    @symbol = :sunshine
  end
end
