print "What's your age? "
age = gets.to_i

def can_drink(current_age)
	if current_age < 18
		puts "Sorry, you cannot drink legally."
	else 
		puts "Congradulations! you can drink legally."
	end 
end

can_drink(age)