# class Car
# 	def make_sound
# 		noise
# 	end
# end

# class Engine < Car
# 	def noise
# 		"Brooom!"
# 	end
# end

# puts Engine.new.noise



# class Car
# 	def initialize(engine)
# 		@engine = engine
# 	def sound
# 		"honk"
# 	end
# 	def make_sound
# 		puts @engine.sound + " " + sound
# 	end
# end

# class Engine
	
# end

class V8 
	def sound
		"Buhbuhbuhbuh!"
	end
	
end

class Electric 
	def sound
		"Phhhhhhhhh"
	end
	
end

class V12 
	def sound
		"BOOOOOM!"
	end
	
end

engine = V8.new
puts engine.sound

engine = V12.new
puts engine.sound

