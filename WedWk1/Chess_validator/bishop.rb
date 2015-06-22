class Bishop < Piece
		def check_move(origin,destination,board)
			if (destination[1] == origin[1])
				puts "lols no"
			elsif ((destination.first-origin.first)/(destination[1]-origin[1])).abs == 1
				puts "Jolly good ol chap!"
			else	puts "lolz no"
			end
		end
end