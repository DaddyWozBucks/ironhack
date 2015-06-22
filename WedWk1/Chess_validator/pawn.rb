require "./piece"

class Pawn < Piece
	def check_move(origin,destination,board)
		case color
			when "white"
				if destination[1] + 1 == origin[1]
					puts "pawns move out!"
				elsif destination[1] + 1 == origin[1] && (destination[0] - origin[0]).abs == 1 && destination.color == "black"
					puts "Attack!"
				else
					puts "ILLEGAL"
				end
			when "black"
				if destination[1] - 1 == origin[1]
					puts "pawns move out!"
				elsif destination[1] - 1 == origin[1] && (destination[0] - origin[0]).abs == 1 && destination.color == "white"
					puts "Attack!"
				else
					puts "ILLEGAL"
				end
		end
	end
	end