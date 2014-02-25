File.open('hello_from_ruby.txt', 'w') do | input |
	input.puts "#{gets}"
end

File.open('hello_from_ruby.txt', 'a+') do |file|
	# ask for command
puts "What do you want to do with this file? (save / read / introspect)"
command = gets.chomp.downcase
	if command == "save"
	#save the file
		puts "Enter stuff"
		file.puts gets.chomp
	elsif command == "read"
		#show contents
		puts file.readlines
	elsif command == "introspect"
		#print file to screen
		File.open($0, 'r') { |prog| puts prog.readlines }
	end
end