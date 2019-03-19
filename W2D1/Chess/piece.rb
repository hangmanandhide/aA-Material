class Piece
  attr_reader :type
  attr_accessor :pos

  def initialize(pos, type)
    @position = pos
    @type = type
  end

  def inspect
    @type
  end
end
