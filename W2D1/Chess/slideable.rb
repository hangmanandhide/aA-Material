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

    # current_pos = self.position
    # move_dirs.each do |move|
    #   move_option = [current_pos[0] + move[0], current_pos[1] + move[1]]
    #   if (0..7).to_a.include?(move_option[0]) && (0..7).to_a.include?(move_option[1])
    #     legal_moves << move_option
    #   end
    # end

    move_dirs.each do |deltamove|
       legal_moves += grow_unblocked_moves_in_dir(deltamove[0], deltamove[1])
    end
    legal_moves

  end

  private

  def move_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy) #right now, only checks on board
    dir_moves = []
    
    current_pos = self.position
    keep_moving = true
    while keep_moving
        move_option = [current_pos[0] + dx, current_pos[1] + dy]
        if (0..7).to_a.include?(move_option[0]) && (0..7).to_a.include?(move_option[1])
            dir_moves << move_option
            current_pos = dir_moves.last
        else
            keep_moving = false
        end
      
    end
    
    dir_moves
  end
end
