class Game
	def start_game
		Room1.new.games_start
	end

end

class Room1 < Game
	def games_start
		puts "Four directional movements represented by n,s,w,e keys"
		puts "You are in a room. There is a door to the North."
		cmd = gets.chomp
		if cmd == "n"
			Room2.new.room2_start
		
		else
			puts "Lets try this again"
			puts "ZZZZzzzzzzzZZZZZZzzzzzzZZZZZ"
			sleep 5
			games_start
		end
	end
end

class Room2 < Game
	def room2_start
		puts " You are now in a large dining hall. There are doors to the South and East" 
		sleep 2
		room2_action
	end
	def room2_action
			puts " Which way do you want to go?"
			q = gets.chomp
			if q == "s"
				Room3.new.room3_start
				
			elsif
				q == "e"
					Room4.new.room4_start
			else
				puts " You have three options. Choose wisely, player-san..."
				room2_action
			end
	end
end

class Room3 < Game
	def room3_start
		puts " You are now in the kitchen. There is a door on the West side of the room\n or you can go back the way you came (North)" 
		sleep 2
		room3_action
	end
	def room3_action
			puts " Which way do you want to go?"
			q = gets.chomp
			if q == "w"
				Room5.new.room5_start
				
			elsif
				q == "n"
				Room2.new.room2_start
			else
				puts " You have three options. Choose wisely, player-san..."
				room3_action
			end
	end
end

class Room4 < Game
	def room4_start
		puts " You are now in the backyard. The walls are high and fenced." 
		puts " But you spy a small door on the East (e) side. Its that or back (w)"
		sleep 2
		room4_action
	end
	def room4_action
			puts " Which way do you want to go?"
			q = gets.chomp
			if q == "w"
				Room5.new.room5_start
				
			elsif
				q == "e"
				Room6.new.room6_start
			else
				puts " You have three options. Choose wisely, player-san..."
				room4_action
			end
	end
end

class Room5 < Game
	def room5_start
		puts " You are now in a cupboard." 
		puts " Do you stay in the cupboard and hunt for Narnia (n) or go back (e)"
		sleep 2
		room5_action
	end
	def room5_action
			puts " Which way do you want to go?"
			q = gets.chomp
			if q == "e"
				Room3.new.room3_start
				
			
			else
				puts " THERE IS NO NARNIA!"
				room5_action
			end
	end
end
class Room6
		def room6_start
				puts " You are now in a cupboard." 
				puts " There are a lot of cupboards in this place go back (e)"
				sleep 2
				room6_action
		end
		def room6_action
			puts " Which way do you want to go?"
			q = gets.chomp
			if q == "e"
				Room4.new.room4_start
				
			
			else
				puts " THERE IS NO NARNIA!"
				room6_action
			end
		end
end

game1 = Game.new
game1.start_game




