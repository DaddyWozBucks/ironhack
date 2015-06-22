require "./slide_parser"
require "./format"
require "terminfo"
require "./pres_deck"

module	Runtime
	def run
		get_data
		std_pres
	end


class Presentation
	include Runtime
	def initialize(array)
		@i = @i
		@array = array 
		array = ["testing" , "testing", "testing"]
		@screen_data = @screen_data
	end
	def get_data
		data_pull = ScreenData.new
		@screen_data = data_pull.Presentation.new
	end
			
	def start_pres
		puts " Choose your style of presentation:"	
		puts " 1. Standard Presentation"
		puts " 2. Auto Presentation"
		puts " 3. ASCII Presentiona"
			 style = gets.chomp
			 case style
			 when "1"
			 	std_pres
			 when "2"
			 	auto_pres
			 when "3"
			 	ascii_pres
			 end

	end

	def next_slide
		
		input = gets.chomp
			case input
			when "p"
				@i =+ 1
			when "q"
				@i =- 1
			end
	end
	def std_pres
			@i = 0
			puts ("\n")*(@screen_data[0])
			puts " "* @screen_data[1] + @array[@i]
			puts ("\n")*(@screen_data[0])
			next_slide
				end
		
		
	end

	def auto_pres
			puts (("\n")*@screen_data[0])
			puts (" "* @screen_data[1]) + @array[@i]
			puts (("\n")*@screen_data[0])
			sleep 3
			@i =+1
	def ascii_pres
	end

end




end





test = Slide_Parser.new.slide_to_array
puts test.inspect

pres1 = Presentation.new(test)
presentation.run


	



	# def initialize(slides)
	# 	@slides = slides	
	# 	@index = index
	# end
	
	# def format_slide(index)
	# 	@index = index
	# 	slide_space

		
	# 	slide_space
	# 	@index = @index + 1
		
	# end
	# def format_slide_back
	# 	@index = @index
	# 	sl = @slides[@index]
	# 	slide_space
	# 	puts @slides[@index]
	# 	slide_space
	# 	@index = @index - 1	
	# end