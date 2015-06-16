puts "What is the source file?"
file_name = gets.chomp
file_contents = IO.read "text1.txt"
puts "What is the destination file?"
file_name2 = gets.chomp
IO.write(file_name2, file_contents)

