class List
	def initialize
		@row_dict = {"a" => 0, "b"=> 1, "c" => 2, "d"=> 3, "e"=> 4, "f" => 5, "g" => 6, "h" => 7 }
		@col_dict = {"1" => 0, "2"=> 1, "3" => 2, "4"=> 3, "5"=> 4, "6" => 5, "7" => 6, "8" => 7 }
	end
	def parse_list_0	
		move_list =	IO.readlines("chess_moves.txt", "\n")
		parsed_moves = move_list.each do |moves|
				origin_raw = moves[0]
				destination_raw = moves[1]
				origin = [ @row_dict[origin_raw[0]], @col_dict[origin_raw[1]]]
				destination = [ @row_dict[destination_raw[0]], @col_dict[destination_raw[1]]]				
				end	

	end
end

list1 = List.new
p list1.parse_list_0






# class Board
# 		def initialize
# 			board = [
# 				[:Wr, nil, nil, nil, nil, nil, nil],		
# 				[nil, nil, nil, nil, nil, nil, nil],	#2
# 				[nil, nil, nil, nil, nil, nil, nil],	#3
# 				[nil, nil, nil, nil, nil, nil, nil],	#4
# 				[nil, nil, nil, nil, nil, nil, nil],	#5
# 				[nil, nil, nil, nil, nil, nil, nil],	#6
# 				[nil, nil, nil, nil, nil, nil, nil],	#7
# 				[nil, nil, nil, nil, nil, nil, :Br]	
# 				]
			
			
			
# 		end
# 	# binding.pry

		

# 		# def add_piece(class,team, x, y)
# 		# 	piece = class.new ("white")
# 		# 	@board.insert([x][y], piece )
# 		# end
# end

# # board = Board.new
# # board.add_piece(Rook, "white",0,1)

# #test = Board.new


# # class Board
# 	def initialize
# 		@board = [
# 			[:Wr, nil, nil, nil, nil, nil, nil],		
# 			[nil, nil, nil, nil, nil, nil, nil],	#2
# 			[nil, nil, nil, nil, nil, nil, nil],	#3
# 			[nil, nil, nil, nil, nil, nil, nil],	#4
# 			[nil, nil, nil, nil, nil, nil, nil],	#5
# 			[nil, nil, nil, nil, nil, nil, nil],	#6
# 			[nil, nil, nil, nil, nil, nil, nil],	#7
# 			[nil, nil, nil, nil, nil, nil, :Br]	
# 			]
# 	end
# end




# board = Board.new
# @board[0][1]

# def initialize
# 		@board = [
# 			[:Wr, "b1", "c1", "d1", "e1", "f1", "h1"],		#1
# 			["a2", "b2", "c2", "d2", "e2", "f2", "h2"],	#2
# 			["a3", "b3", "c3", "d3", "e3", "f3", "h3"],	#3
# 			["a4", "b4", "c4", "d4", "e4", "f4", "h4"],	#4
# 			["a5", "b5", "c5", "d5", "e5", "f5", "h5"],	#5
# 			["a6", "b6", "c6", "d6", "e6", "f6", "h6"],	#6
# 			["a7", "b7", "c7", "d7", "e7", "f7", "h7"],	#7
# 			["a8", "b8", "c8", "d8", "e8", "f8", :Br]	#8
# 		#	a	b 	c  d e  f  g h
# 		]
# end