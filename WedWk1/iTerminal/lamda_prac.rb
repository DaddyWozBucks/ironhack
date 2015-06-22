class Fizzbuzz
	
	def initialize
		@keywords = {}
	end
	
	def run
		(1..100).each do |num|
			puts check_num(num)	
		end
	end

	def add_keyword(trigger, word)
		@keywords[trigger] = word
	end

	def keywords= (keywords)
		@keywords = keywords
	end

	def condition=(lambda)
		@condition = lambda
	end

	def check_num(number)
		output = ""
		@keywords.each do |key, value|
				if @condition.call(number,key)
					output += value
				end
			end
			if output == ""
				output = number
			end
			
			return output
	end
end

fizzbuzz = Fizzbuzz.new

fizzbuzz.keywords = {3 => "fizz", 5 => "buzz"}
fizzbuzz.condition = -> (number, key){(number % key) == 0}
fizzbuzz.run