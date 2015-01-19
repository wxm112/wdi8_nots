

# def leap_year?(year)
# 	if year%4 == 0
# 		unless year%100==0 && year%400 ==0
# 			return true
# 		else
# 			return false
# 		end
# 	else
# 		return false
# 	end
# end


def leap_year?(year)
	if year%4 == 0
		if year%100!=0 || year%400 ==0
			return true
		else
			return false
		end
	else
		return false
	end
end

puts leap_year?(1997)
puts leap_year?(1996)
puts leap_year?(2000)