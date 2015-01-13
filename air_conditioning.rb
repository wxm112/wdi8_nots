print "What's the current temperature? "
current_temperature = gets.to_i
print "If the A/C is functional? (y/n) "
aircon = gets.chomp.downcase
print "What temperature do you wish? "
desired_temperature = gets.to_i

if aircon == "y" 
	if current_temperature > desired_temperature
		puts "Turn on the A/C Please"
	end
else aircon == "n" 
	if current_temperature > desired_temperature
		puts "Fix the A/C now! It's hot!"
	else
		puts "Fix the A/C whenever you have the chance...It's cool..."
	end
end