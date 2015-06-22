pieces_dict = {
	"p" => Pawn,
	"k" => King,
	"q" => Queen,
	"b" => Bishop,
	"n" => Knight,
	"r" => Rook,

}

colors_dict = {
	"W" => "white",
	"B" => "black"
}



piece_sym = :Wa
piece_str = piece_sym[1]
piece_col = colors_dict[piece_sym[0]]
piece = pieces_dict[piece_str]
p piece




# require "pry"

# class Board
# 	def initialize
# 		@board = [
# 			[:Br, :Bkn, :Bb, :Bk, :Bq, :Bb, :Bkn, :Br],		
# 			[:Bp, :Bp, :Bp, :Bp, :Bp, :Bp, :Bp, :Bp],	#2
# 			[nil, nil, nil, nil, nil, nil, nil, nil],	#3
# 			[nil, nil, nil, nil, nil, nil, nil, nil],	#4
# 			[nil, nil, nil, nil, nil, nil, nil, nil],	#5
# 			[nil, nil, nil, nil, nil, nil, nil, nil],	#6
# 			[:Wp, :Wp, :Wp, :Wp, :Wp, :Wp, :Wp, :Wp],	#7
# 			[:Wr, :Wkn, :Wb, :Wq, :Wk, :Wb, :Wkn, :Wr]	
# 		]


# def check_path(origin, detination, board)


# end

# 		def parse_list_0
# 			IO.readlines("chess_moves.txt", " ") do |string|
# 						string.first
# 			case str.first
# 			when "a"
# 				origin[0]
# 		end
# end

# test = Board.new
# test.board_populate

# case piece_sym
# 						when piece_sym = :Br
# 								@board[row][col] = Rook.new("black",@board)
# 						when piece_sym[0] = :Bkn
# 								bkn = Knight.new("black",@board
# 								)
# 								piece_sym.insert(1, bkn)
# 						when piece_sym[0] = :Bb
# 								bb = Bishop.new("black",@board
# 								)
# 								piece_sym.insert(1, bb)
# 						when piece_sym[0] = :Bk
# 								bk = King.new("black",@board
# 								)
# 								piece_sym.insert(1, bk)
# 						when piece_sym[0] = :Bq
# 								bq = Queen.new("black",@board
# 								)
# 								piece_sym.insert(1, bq)
# 						when piece_sym[0] = :Bp
# 								bp = Pawn.new("black",@board
# 								)		
# 								piece_sym.insert(1, bp)			
# 						when piece_sym[0] = :Wr
# 								wr = Rook.new("white",@board
# 								)
# 								piece_sym.insert(1, wr)
# 						when piece_sym[0] = :Wkn
# 								wkn = Knight.new("white",@board
# 								)
# 								piece_sym.insert(1, wkn)
# 						when piece_sym[0] = :Wb
# 								wb = Bishop.new("white",@board
# 								)
# 								piece_sym.insert(1, wb)
# 						when piece_sym[0] = :Wk
# 								wk = King.new("white",@board
# 								)
# 								piece_sym.insert(1, wk)
# 						when piece_sym[0] = :Wq
# 								wq = Queen.new("white",@board
# 								)
# 								piece_sym.insert(1, wq)
# 						when piece_sym[0] = :Wp
# 								wp = Pawn.new("white",@board
# 								)
# 								piece_sym.insert(1, wp)
# 						end