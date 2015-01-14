puts "1"
p days_of_the_week = %w{Monday Tuesday Wednesday Thursday Friday Saturday Sunday}
# p days_of_the_week = "Monday Tuesday Wednesday Thursday Friday Saturday Sunday".split(" ")
# days_of_the_week = ['Monday','Tuesday','Wednesday', 'Thursday','Friday', 'Saturday','Sunday']

puts "2"
p days_of_the_week.rotate -1
# p days_of_the_week.unshift days_of_the_week.pop

puts "3"
p inner_array = [days_of_the_week[0..4], days_of_the_week[5..6]]
# p inner_array = [['Monday','Tuesday','Wednesday', 'Thursday','Friday'],['Saturday','Sunday']]

puts "4"
p inner_array.delete_at 1
p inner_array

puts "5"
p inner_array.flatten.sort
p inner_array[0].sort


