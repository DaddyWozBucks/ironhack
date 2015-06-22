require "pry"
#require "./chess_moves.txt"
require "./king"
require "./queen"
require "./bishop"
require "./pawn"
require "./knight"
require "./rook"
require "./parser"


class Board
	def initialize



		@init_board = [
			[:Br, :Bn, :Bb, :Bk, :Bq, :Bb, :Bn, :Br],		
			[:Bp, :Bp, :Bp, :Bp, :Bp, :Bp, :Bp, :Bp],	#2
			[nil, nil, nil, nil, nil, nil, nil, nil],	#3
			[nil, nil, nil, nil, nil, nil, nil, nil],	#4
			[nil, nil, nil, nil, nil, nil, nil, nil],	#5
			[nil, nil, nil, nil, nil, nil, nil, nil],	#6
			[:Wp, :Wp, :Wp, :Wp, :Wp, :Wp, :Wp, :Wp],	#7
			[:Wr, :Wn, :Wb, :Wq, :Wk, :Wb, :Wn, :Wr]	
		]
		@board = []
	
	end
#binding.pry
	def occupied?(pos)
	end

	def board_populate
		puts "hello"
			pieces_dict = {
				"p" => Pawn,
				"k" => King,
				"q" => Queen,
				"b" => Bishop,
				"n" => Knight,
				"r" => Rook
			}
			puts "goodbye"

		colors_dict = {
			"W" => "white",
			"B" => "black"
			}
				@init_board.each_with_index do |sub_array, row|
					@board[row] = []
					sub_array.each_with_index do |piece_sym, col|	
						if piece_sym == nil
							@board[row][col] = nil
						else	
							piece_str = piece_sym[1]
							piece_col = colors_dict[piece_sym[0]]
							@board[row][col] = pieces_dict[piece_str].new(piece_col)	
					end
				end
			end
	end

	def print_board
		@board.each	do |sub_array|
			sub_array.each do |square|
				puts square.inspect
			end
		end
	end

end



#binding.pry
















board = Board.new


board.board_populate

board.print_board

#binding.pry

# test = Rook.new("white",[0,0])
# test1 = Rook.new("black",[0,7])
# test.check_move([0,0],[0,7], board)
# test.check_team(test1)

# tutu = Bishop.new("white", [0,3])
# canterbury = Bishop.new("black", [3,0])
# tutu.check_move([0,3],[3,0], board)

# liz = Queen.new("white", [0,4])
# liz.check_move([4,0],[0,4],board)
# liz.check_attack([0,3])

# charlemagne = Knight.new("white",[0,2])
# charlemagne.check_move([7,0],[5,1], board)

# henry = King.new("white", [0,3])
# henry.check_move([0,3],[0,4], board)





