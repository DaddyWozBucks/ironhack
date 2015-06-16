class Car
 	
	
 	
 	def initialize(name)
 		@name = name
 		
 	end

 	def makenoise
 		puts @sound
 	end

 

end

sounds = ["Broom", "Meek", "Nyan"]

cars = sounds.map { |sound| Car.new(sound)  } 

puts cars.inspect