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
  puts "5. Assigning an animal to a client."
  puts "6. Listing all clients"
  puts "7. Listing all animals"
  puts "8. Listing clients who are waiting for adopting animals. "
  puts "9. Listing animals who are waiting to be adopted."
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
  num_pets = gets.chomp.to_i

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

  print "Enter the animal's toys \n(please use speace to seprate them if it has nultiple toys): "
  toys = gets.chomp.split

  animal = Animal.new name, age, gender, species, toys
  $shelter[:all_animals] << animal
  puts "You have add #{name} successfully."
end

def adopt_application
  puts "Choose the client's name: \n0. Back"
  $shelter[:all_clients].each_index do |i|
    puts "#{i+1}. #{$shelter[:all_clients][i]}"
  end
  chosen_client = gets.chomp.to_i
  if chosen_client == 0
    return
  else
    client = $shelter[:all_clients][chosen_client - 1]
    $shelter[:clients_waiting_for_animal] << client
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

def assign_animal
  puts "Choose the client's name: \n0. Back"
  $shelter[:clients_waiting_for_animal].each_index do |i|
    puts "#{i+1}. #{$shelter[:clients_waiting_for_animal][i]}"
  end
  chosen_client = gets.chomp.to_i
  if chosen_client == 0
    return
  else
    client = $shelter[:clients_waiting_for_animal][chosen_client - 1]
    $shelter[:clients_waiting_for_animal].delete(client)
    client.num_pets += 1
  end

  puts "Choose the pet's name: \n0. Back"
  $shelter[:animals_waiting_for_adoption].each_index do |i|
    puts "#{i+1}. #{$shelter[:animals_waiting_for_adoption][i]}"
  end
  chosen_animal = gets.chomp.to_i
  if chosen_animal == 0
    return
  else
    animal = $shelter[:animals_waiting_for_adoption][chosen_animal - 1]
    $shelter[:animals_waiting_for_adoption].delete(animal)
    $shelter[:all_animals].delete(animal)
  end

end

loop do
  menu_selection = read_choice
  if menu_selection != "q"
    if menu_selection == "1"
      add_client
    elsif menu_selection == "2"
      add_animal
    elsif menu_selection == "3"
      adopt_application
    elsif menu_selection == "4"
      put_to_adopt
    elsif menu_selection == "5"
      assign_animal
    elsif menu_selection == "6"
      if  ($shelter[:all_clients]).count == 0
        puts "Sorry, we haven't got any client signed up."
      else
        puts $shelter[:all_clients]
      end
    elsif menu_selection == "7"
      if ($shelter[:all_animals]).count == 0
        puts "Sorry, we don't have any animal currently."
      else 
        puts $shelter[:all_animals]
      end
    elsif menu_selection == "8"
      if ($shelter[:clients_waiting_for_animal]).count == 0
        puts "There is no client waiting for adopting animals."
      else
        puts $shelter[:clients_waiting_for_animal]
      end
    elsif menu_selection == "9"
      if ($shelter[:animals_waiting_for_adoption]).count == 0
        puts "There is no animal waiting for adoption."
      else
        puts $shelter[:animals_waiting_for_adoption]
      end
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
