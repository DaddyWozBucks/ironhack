require "pry"
module Objects
	def initialize
		@user_inventory = {}
	end

	def add_to_inventory(key)
		@user_inventory[key] = @room_inventory[key]
	end

	def drop_from_inventory(key)
		@user_inventory.delete(key)
	end
	def look_for_objects
		puts "Items Found!"
		@room_inventory.each {|key, value| 
		puts "#{value} (#{key})"}
	end
end

class Room
	def initialize
		@user_inventory = {}
	end

	def start_game
		Room1.new.games_start
	end
	def room_action
		puts "What do you want to do?"
		action = gets.chomp
			if action == "look around"
				look_for_objects
			elsif action == "exit"
				exit
			else
				puts "I dont understand"
			end
		puts "Pick up items? Input key value"	
		pick = gets.chomp
		add_to_inventory(pick)
		room_action	
	end

	 
end

class Room1 < Room
	include Objects
	def initialize
		@auto_exits = "N"
		@room_inventory = {"k" =>"knife", "w" => "whip"}
		super
	end
	def games_start
		puts "Four directional movements represented by n,s,w,e keys"
		puts "You are in a dark, cold room. Something smells funny and that might be blood running down my forehead"
		room_action
	end

	def exit
		puts "Exits aviailable:" + @auto_exits
		#binding.pry
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

class Room2 < Room

	def initialize
		@auto_exits = "S or E"
		@room_inventory = {"c" =>"chair", "f" => "fork"}
	end
	def room2_start
		puts " You are now in a large dining hall. There are doors to the South and East" 
		sleep 2
		room_action
	end
	def exit
			puts " Which way do you want to go?"
			puts "Exits aviailable:" + @auto_exits
			q = gets.chomp
			if q == "s"
				Room3.new.room3_start
				
			elsif
				q == "e"
					Room4.new.room4_start
			else
				puts " You have three options. Choose wisely, player-san..."
				room_action
			end
	end
end

class Room3 < Room
	
	def initialize
		@auto_exits = "W or N"
		@room_inventory = {"o" =>"bottle opener", "p" => "peeler"}
	end
	def room3_start
		puts " You are now in the kitchen. There is a door on the West side of the room\n or you can go back the way you came (North)" 
		sleep 2
		room_action
	end
	def exit
			puts " Which way do you want to go?"
			puts "Exits aviailable:" + @auto_exits
			q = gets.chomp
			if q == "w"
				Room5.new.room5_start
				
			elsif
				q == "n"
				Room2.new.room2_start
			else
				puts " You have three options. Choose wisely, player-san..."
				room_action
			end
	end
end

class Room4 < Room

	def initialize
		@auto_exits = "E or W"
		@room_inventory = {"h" =>"hanglider", "b" => "baton"}
	end
	def room4_start
		puts " You are now in the backyard. The walls are high and fenced." 
		puts " But you spy a small door on the East (e) side. Its that or back (w)"
		sleep 2
		room_action
	end
	def exit
			puts " Which way do you want to go?"
			puts "Exits aviailable:" + @auto_exits
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

class Room5 < Room

	def initialize
		@auto_exits = "E or N"
		@room_inventory = {"b" =>"butterscotch", "m" => "mayonaise"}
	end
	def room5_start
		puts " You are now in a cupboard." 
		puts " Do you stay in the cupboard and hunt for Narnia (n) or go back (e)"
		sleep 2
		room5_action
	end
	def exit
			puts " Which way do you want to go?"
			puts "Exits aviailable:" + @auto_exits
			q = gets.chomp
			if q == "e"
				Room3.new.room3_start
				
			
			else
				puts " THERE IS NO NARNIA!"
				room5_action
			end
	end
end
class Room6 < Room

	def initialize
		@auto_exits = "E"
		@room_inventory = {"s" =>"snake", "l" => "lawnornament"}
	end
		def room6_start
				puts " You are outside." 
				puts " Run East (e) to your freedom!"
				sleep 2
				room6_action
		end
		def exit
			puts " Which way do you want to go?"
			puts "Exits aviailable:" + @auto_exits
			q = gets.chomp
			if q == "e"
				puts "FREEEEEEDOMMMM"
				
			
			else
				puts " You are an idiot!"
				end_game
			end
		end
		def end_game
			put "Victory!"
		end
end




game1 = Game.new
game1.start_game




