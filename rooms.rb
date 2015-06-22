class Room
	attr_accessor :description, :error
	def initialize(description, error)
		@description = description
		@error = error
		@all_rooms = []
	end	
end

forest = Room.new("You are in a large clearing in a forest. Bandits are closing in. There is a gap in the trees North of you. Run!","No escape that way!")
cave = Room.new("You are in a dark cave where the path forks. Go either West or South", "You can't walk through walls David Copperfield...")
classroom = Room.new("You find yourself in a class room. The teacher sees you and charges, nostrils flaring. Exits are North and West - Run!", "The children block your escape! Try another direction!")
tower = Room.new("You wake up in a high tower. Your memeory is hazy. The only way out is down (South)", "One way out buddy... not difficult")
temple = Room.new("You walk into a grand temple. The priests look at your leeringly. Time to go! South or North?", "A giant god statue blocks your way - try another way!")

# forest.all_rooms.push(forest)

puts forest.description
