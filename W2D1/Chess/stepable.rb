module Stepable
  def moves
    legal_moves = []
    current_pos = self.position
    move_diffs.each do |move|
      move_option = [current_pos[0] + move[0], current_pos[1] + move[1]]
      if (0..7).to_a.include?(move_option[0]) && (0..7).to_a.include?(move_option[1])
        legal_moves << move_option
      end
    end
    legal_moves
  end

  private

  def move_diffs
  end
end
