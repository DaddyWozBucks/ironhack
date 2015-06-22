class Slide_Parser

	def slide_to_array
		slides = IO.read("slides.txt")
		slides_array = [slides.split("-")]
			
	end
	
	
	# def parse_slide(file)
	# 	slides = IO.foreach(file){|line|slides.array << line}
		
	# end
end

