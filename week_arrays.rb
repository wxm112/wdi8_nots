puts "1"
p days_of_the_week = ['Monday','Tuesday','Wednesday', 'Thursday','Friday', 'Saturday','Sunday']

puts "2"
p days_of_the_week.push days_of_the_week.shift

puts "3"
p inner_array = [['Monday','Tuesday','Wednesday', 'Thursday','Friday'],['Saturday','Sunday']]

puts "4"
p inner_array.delete_at 1
p inner_array
p inner_array.flatten.sort
p inner_array[0].sort


