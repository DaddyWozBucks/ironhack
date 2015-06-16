class Blog
array = [my_first_post, second_post, third_post]
	def create_front_page
	array.each do |v| 
		puts v.title
		puts "****************"
		puts v.text
		puts "----------------"
		
		end
	end

end

class Post
	attr_accessor :title
	attr_accessor :text

	def initialize(title, text)
		
		@title = title
		@text = text
	end
end


my_first_post = Post.new("1stone", "1stbody")
second_post = Post.new("sdkfjal", "sdklfjs")
third_post = Post.new("ihouerogh", "isdncoain")



array.create_front_page
