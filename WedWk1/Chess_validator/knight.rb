require "./piece"

class Knight < Piece
		def check_move(origin,destination,board)
				dist1 = (destination.first-origin.first) * (destination.first-origin.first)
				dist2 = (destination[1]- origin[1]) * (destination[1]- origin[1])
				sqrt_dis = dist1 + dist2

			if Math.sqrt(sqrt_dis) == Math.sqrt(5)
				puts "Horsey!"
			else
				puts "ILLEGAL!"
			end
	end
end