require "terminfo"
require "pry"
require "./slide_parser"


class ScreenData
		def initialize	
			@scrsize = []
			@height = @height
				
		end
		def screendata_h
			@scrsize = TermInfo.screen_size
			@height = (@scrsize[0]) / 2 
			return @height
		end
		def screendata_w
			@scrsize = TermInfo.screen_size
			@width = (@scrsize[1] -"The iTerminal is coming".length) / 2
			return @width 
		end
		def format_center
			screendata_h
			screendata_w
			return @height, @width

		end
		
end

# screen_data = ScreenData.new
# screen_data_format = screen_data.format_center
# puts screen_data_format


#binding.pry
		# def vert_mid
		# 	@scrsize / 2 ==@height
			
		# end

		# def slide_format(array)	
		# 	 array.each do |text|
		# 	 		text =
		# 			puts ("\n")*(@height)
		# 			puts " "* @width + @array
		# 			puts ("\n")*(@height)
		# 	end
		# end