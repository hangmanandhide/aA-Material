require_relative "cursor"
require_relative "board"
require_relative "colorize"

class Display
  def initialize
    @cursor = Cursor.new([0, 0], board)
  end
end
