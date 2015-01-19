print "What's the current temperature? "
current_temperature = gets.to_i
print "If the A/C is functional? (y/n) "
air_conditional = gets.chomp.downcase
print "What temperature do you wish? "
desired_temperature = gets.to_i

def aircon(current_temperature,air_conditional,desired_temperature)
	if air_conditional == "y" 
		if current_temperature > desired_temperature
			puts "Turn on the A/C Please"
		end
	else air_conditional == "n" 
		if current_temperature > desired_temperature
			puts "Fix the A/C now! It's hot!"
		else
			puts "Fix the A/C whenever you have the chance...It's cool..."
		end
	end
end

aircon(current_temperature,air_conditional,desired_temperature)

