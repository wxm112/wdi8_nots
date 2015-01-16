require_relative 'animal'
require_relative 'client'

$shelter = {:all_animals => [],
	:animals_waiting_for_adoption => [], 
	:all_clients => [], 
	:clients_waiting_for_animal => []}

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
  $shelter[:all_clients] << client
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
  $shelter[:all_animals] << animal
  puts "You have add #{name} successfully."
end

def adopt
  puts "Choose the client's name: \n0. Back"
  $shelter[:all_clients].each_index do |i|
    puts "#{i+1}. #{$shelter[:all_clients][i]}"
  end
  chosen_client = gets.chomp.to_i
  if chosen_client == 0
    return
  else
    cline = $shelter[:all_clients][chosen_client - 1]
    $shelter[:clients_waiting_for_animal] << cline
    $shelter[:all_clients]
  end
  puts "You have submit your adopt appliation successfully."
end

def put_to_adopt
  puts "Choose the pet's name: \n0. Back"
  $shelter[:all_animals].each_index do |i|
    puts "#{i+1}. #{$shelter[:all_animals][i]}"
  end
  chosen_animal = gets.chomp.to_i
  if chosen_animal == 0
    return
  else
    animal = $shelter[:all_animals][chosen_animal - 1]
    $shelter[:animals_waiting_for_adoption] << animal
  end
  puts "You have put your pet for adoption successfully."
end


require "pry"
binding.pry
