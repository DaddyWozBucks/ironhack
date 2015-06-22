

class Game
	#game rules level up, death routines
	

end

class Tower
	#creature objects with encounter methods (2 per room If else branch)
	#movement rules
	def games_start
		puts ""
		puts " You wake up in a high tower."
		puts " Your mememory is hazy. Seriously, what the hell happened?"
		puts " There are two doors outlined in light against the dark of the room"
		puts " Do you take door number 1 or Door number 2?"
		cmd = gets.chomp
		if cmd == "1"
			Temple.temple_start
		elsif cmd == "2"
			Library.library_start
		else
			puts "Whoah... maybe I should lie back down. Walking into walls is not a good sign for my current state. ugh"
			puts "*collapses on bed*"
			puts "ZZZZzzzzzzzZZZZZZzzzzzzZZZZZ"
			sleep 5
			games_start
		end
	end
	
end

class Temple_yard
end

class Temple < Game
	#center 1st visit
	def temple_start
		puts " You finally exit the perilous spiral, stone staircase.\n You are in a large temple filled with monks chanting.\n You are disorienated, confused and in pain." 
		sleep 2
		monk_action
	end
	def monk_action
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



class Library
	#forest offers escape but tigers eat you
end

class Cave
	#offers death but has 50/50 escape or cliff jump
	#swim out to boat v sharks if (possibly pulling a random num gen if statement)
end

game1 = Game.new
game1.games_start

