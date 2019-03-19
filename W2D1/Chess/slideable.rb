module Slideable
  HORIZONTAL_DIRS = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0],
  ] #only increment our row, or our col
  DIAGONAL_DIRS = [
    [-1, 1],
    [1, 1],
    [1, -1],
    [-1, -1],
  ] #increment/decrement row/col by same amount

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    legal_moves = [] #start with if on board or not
    #an array of possible moves piece can make at that time
    #call grow_unblockedetc
    #get pieces current position, get move_dirs
    #computate array of possible moves
    #.select legal moves
    current_pos = self.position
    move_dirs.each do |move|
      #can we move there from our current pos?
      move_option = [current_pos[0] + move[0], current_pos[1] + move[1]]
      #if yes, << legal_moves
      if (0..7).to_a.include?(move_option[0]) && (0..7).to_a.include?(move_option[1])
        legal_moves << move_option
      end
    end
    legal_moves
  end

  private

  def move_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    #loops
  end
end
