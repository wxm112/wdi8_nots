# Dreader infinite loop example.

# while 
# 	puts "Still running"
# end

# puts "Goodbye"

 count = 10
# while count > 0
# 	puts "Counting down: #{count}"
# 	count -= 1
# end

# puts "Blastoff!"

until count == 0
	puts "Counting down: #{count}"
	count -= 1
end

puts "Blastoff!"