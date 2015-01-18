# Dreader infinite loop example.

# while 
# 	puts "Still running"
# end

# puts "Goodbye"

# while count > 0
# 	puts "Counting down: #{count}"
# 	count -= 1
# end

# puts "Blastoff!"
def count_down(count)
	until count == 0
		puts "Counting down: #{count}"
		count -= 1
	end
	puts "Blastoff!"
end

count_down(10)