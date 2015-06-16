class Car
 	
	
 	
 	def initialize(name, color)
 		@name = name
 		
 	end

 	def makenoise
 		puts "The #{@name} goes VROOM!"
 	end

 

end

ferarri = Car.new("Ferarri")
bugatti = Car.new("Bugatti")
maclaren = Car.new("McClaren")

cars = []

cars << ferarri
cars << bugatti
cars << maclaren


sounds = ["Broom", "Meek", "Nyan"]
colours = ["Orange", "blue", "green"]


cars = sounds.map do |sound| 
Car.new(sound)
end

cars = colours.map { |color| Car.new(color) }

puts cars.inspect




