class Piece
    attr_reader :type
  def initialize(pos, type)
    @position = pos
    @type = type
  end

  def inspect
    @type
  end


end
