require_relative 'animal'
require_relative 'client'

$shelter = {:animal => [], :client => []}

def add_client 
	print "Enter the name: "
	name = gets.chomp

	print "Enter the number of children: "
	num_children = gets.chomp

	print "Enter the age: "
	age = gets.chomp

	print "How many pets do you have? "
	num_pets = gets.chomp

	client = Client.new name, num_children, age, num_pets
	$shelter[:client] << client
	puts "You have add the #{name} successfully."
	end

add_client