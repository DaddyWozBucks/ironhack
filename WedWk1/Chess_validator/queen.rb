require "./piece"

class Queen < Piece
		def check_move(origin,destination,board)
			if origin[1] == destination[1]
				puts "V"
			elsif ((destination.first-origin.first)/(destination[1]-origin[1])).abs == 1
				puts "The ladies are moving!!"
			elsif origin.first == destination.first
				puts "H"
			else
				puts "ILLEGAL"
			end
		end
end