require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'
visits ||= 0
# @input1 = @input1
# @operator = {"*" => "multiply_x", "/" => "divide_x", "+" => "add_x", "-" => "minus_x"}
# @input2 = @input2
# @result = @result

#  class Calculator
#  	def initialize
#  		@input1 = input1
# 		#@operator = {"*" => "multiply_x", "/" => "divide_x", "+" => "add_x", "-" => "minus_x"}
# 		@input2 = input2
# 		@result = result
# 	end
# 	def divide_x(input1,input2)
# 		@input1 / @input2
# 		return results
# 	end

# 	def minus_x(input1,input2)
# 		@input1 - @input2
# 		return results
# 	end

# 	def add_x(input1,input2)
# 		@input1 + @input2
# 		return results
# 	end

# 	def multiply_x(input1,input2)
# 		@input1 * @input2
# 		return results
# 	end

# end

get "/" do
	erb :index
end



get "/results" do 
	p params
	if params["multiply"]
		@result = params["input1"].to_i * params["input2"].to_i
		
	elsif params["divide"]
		@result = params["input1"].to_i / params["input2"].to_i
		
	elsif params["subtraction"]
		@result = params["input1"].to_i + params["input2"].to_i
		
	elsif params["addition"]
		@result = params["input1"].to_i + params["input2"].to_i
		
	end
	# calc = Calculator.new
	# calc.@operator[params["operator"]](params["input1"], params["input2"])
	erb :results
end
