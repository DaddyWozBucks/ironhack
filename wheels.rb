class Car
	def wheels
		4
	end
	def noise
		"Broombroom"
	end
end
	



class Bike
	def wheels
		2
	end
	def noise
		"panting"
	end

end

class Trike
	def wheels 
	 3
	end
	def noise
		"squeak"
	end
end

vehicles = []

trike = Trike.new
vehicles << trike
bike = Bike.new
vehicles << bike
car = Car.new	
vehicles << car
sum = 0
# wheels = vehicles.each do |wheels|
# 	vehicle.wheels + 

# end

	wheels_total = vehicles.reduce(0) do |sum, v|
	sum + v.wheels
	end
end



noises_con = vehicles.reduce("") do |sum, v| 
	sum +  " " + v.noise
end
	



puts wheels_total
puts noises_con
	
