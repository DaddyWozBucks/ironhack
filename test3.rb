class Game
	

	def run(method)
		@method = method
	end
end


class Temple < Game
	#center 1st visit
	def temple_start
		puts " You finally exit the perilous spiral, stone staircase.\n You are in a large temple filled with monks chanting.\n You are disorienated, confused and in pain." 
		sleep 2
		temple_action
	end
	def temple_action
			puts " Before you can really do much about it the monks see you"
			puts " and spring to their feet yelling 'The Daemon is escaping!'"
			puts " Immediately an array of bladed weapons appeared."
			puts " It was clear these were those kind of monks"
			puts " The North (n) and West(w) exits are blocked off by the charging monks"
			puts " Do you flee South (s), East (e) or take your chances with the armed men (q)"
			q = gets.chomp
			if q == "s"
				puts "temple_yard_entry"
				
			elsif
				q == "e"
				puts "Cliffs.cliffs_entry"
			else
				puts " You know how in most kung fu movies its 1 v 20 and the solo fighter wins? \n This is the counterpart to that. 20 highly skilled fighters versus a possible head trauma victim." 
				puts " Needless to say you dont fare well"
				puts " R.I.P"
			end
	end


end

game1 = Temple.new
game1.temple_start