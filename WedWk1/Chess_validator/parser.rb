class Parser
	def intitialize
		@array = []
		
	end

	def split_array(string)
		@array = string.split
	end

end

list = Parser.new
puts list.split_array("hello there")

