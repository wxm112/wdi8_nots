require_relative 'animal'
require_relative 'client'

$shelter = {:all_animals => [],
            :animals_waiting_for_adoption => [],
            :all_clients => [],
            :clients_waiting_for_animal => []}

def read_choice
  puts "Welcome to our website."
  puts "1. Adding a client"
  puts "2. Adding an animal"
  puts "3. Submiting an adopt application"
  puts "4. Putting a animal for adoption"
  puts "5. Listing all clients"
  puts "6. Listing all animals"
  puts "7. Listing clients who are waiting for adopting animals. "
  puts "8. Listing animals who are waiting to be adopted."
  puts "Q. Quit"

  print "Please enter your selections: "
  gets.chomp.downcase
end


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

loop do
  menu_selection = read_choice
  if menu_selection != "q"
    if menu_selection == "1"
      add_client
    elsif menu_selection == "2"
      add_animal
    elsif menu_selection == "3"
      adopt
    elsif menu_selection == "4"
      put_to_adopt
    elsif menu_selection == "5"
	  puts $shelter[:all_clients]
    elsif menu_selection == "6"
      puts $shelter[:all_animals]
    elsif menu_selection == "7"
      puts $shelter[:clients_waiting_for_animal]
    elsif menu_selection == "8"
      puts $shelter[:animals_waiting_for_adoption]
    else
      puts "Invalid choice."
    end
  else
  	puts "Thank you for using our serverse."
    break
  end 
end

require "pry"
binding.pry
