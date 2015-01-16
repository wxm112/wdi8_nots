require_relative 'animal'
require_relative 'client'

$shelter = {:animals => [], :clients => []}

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
  $shelter[:clients] << client
  puts "You have add #{name} successfully."
end

def add_animal
	print "Enter the animal's name: "
	name = gets.chomp

	print "Enter the age: "
  	age = gets.chomp

  	print "Enter the gender: "
  	gender = gets.chomp

  	print "Enter the species: "
  	species = gets.chomp

  	print "Enter the animal's toys \n(please use speace to seprate them if it has nultiple toys: "
  	toys = gets.chomp.split

  	animal = Animal.new name, age, gender, species, toys
  	$shelter[:animals] << animal
  	puts "You have add #{name} successfully."
  end

  add_animal
  add_client

  require "pry"
  binding.pry



