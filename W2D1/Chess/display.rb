require_relative "cursor"
require "colorized_string"
require_relative "board"
require "colorize"

class Display
  def initialize(board)
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    system("clear")
    @cursor.board.layout.each.with_index do |row, row_idx|
      puts ""
      row.each.with_index do |spot, spot_idx|
        if [row_idx, spot_idx] == @cursor.cursor_pos
          if spot == nil
            print " ".colorize(:color => :red, :background => :yellow)
          else
            print "#{spot.type}".colorize(:color => :red, :background => :yellow)
          end
        else
          if spot == nil
            print " "
          else
            print "#{spot.type}"
          end
        end
      end
    end
    puts " "
  end

  def testing_render
    @cursor.get_input
    render
    sleep(1 / 5)
    testing_render
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  a = Display.new(b)
  a.testing_render
end
