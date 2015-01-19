print "Which suburb do you live in? "
suburb = gets.chomp.downcase

# if suburb == "Sydney"
# 	puts "You live in the city."
# elsif suburb == "Manly"
# 	puts "You must be rich:)"
# elsif suburb == "Milsons Point"
# 	puts "It's the nothern part of the city."
# else
# 	puts "I don't know where is it."
# end
def suburb_check(suburb)
	case suburb 
	when "chatswood", "newtown" then puts "Good nomming"
	when "palm beach", "avalon" then puts "Long commute"
	else puts "I'm sure that's a very nice place"
	end
end

suburb_check(suburb)