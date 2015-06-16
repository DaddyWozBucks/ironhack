class Car
 	
	attr_reader :sound
 	
 	def initialize(sound)
 		@sound = sound
 		
 	end

 	def makenoise
 		puts "The #{@sound} goes VROOM!"
 	end

 

end






cars = [Car.new("VVVRRUUMMM"), Car.new("PUUUURRRR"), Car.new("oh I say!")]

all_sounds = cars.reduce("") do |sounds, car|
	sounds = sounds + Car.sound
end

puts nospaces
