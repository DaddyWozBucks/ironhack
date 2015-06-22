class Piece
	attr_reader :color

	def initialize(color)
		@color = color
	
	end
	

	def check_team(board_pos)
			if @color == board_pos.color
				puts "teammates"
			else
				puts "enemy"
			end
	end

	def pos(pos)
		@board[pos.first][pos[1]]
		return board_pos
	end

	def check_attack(pos)
		pos(pos)
		check_team(board_pos)
	end


end	
