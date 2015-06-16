# dict = {}

# counts = [["a", 1],["b", 2], ["c",3]]
# counts.each do |count|
# 	dict[count[0]] = count[1]
	
# end

# puts dict


# counts = [["a", 1],["b", 2], ["c",3]]

# counts.each_with_object({}) do|count, dict|
	
# # 	dict[count[0]] = count[1]

# # puts dict
# # end


# noise = [["lambo", "VVVRRUUMMM"], ["ferrari", "PUUUURRRR"], ["aston", "oh I say!"]]

# noise.each_with_object({}) do|car, noise|
# 	noise[car[0]] = car[1]



# end

# puts noise.inspect
class Car
 	
	
 	
 	def initialize(sound)
 		@sound = sound
 		
 	end

 	def makenoise
 		puts "The #{@sound} goes VROOM!"
 	end

 

end


sounds = ["Broom", "Meek", "Nyan"]
carsounds = sounds.each_with_object({}) do|item, object|
	object[item]= Car.new(item)
end

puts carsounds

