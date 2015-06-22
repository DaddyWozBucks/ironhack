require "./piece"

class Rook < Piece

	def check_move(origin,destination,board)
		
		if origin.first == destination.first
			return "H"
		elsif
			origin[1] == destination[1]
			return "V"
		else
			return "ILLEGAL"
		end

	end
	# def check_path(origin,destination,board)
	# 	case check_move
	# 	when "H"
	# 		$d = destination[0]
	# 		$o = origin[0]
	# 		@board.each do 
	# 		end
	# end
end