require_relative 'animal'
require_relative 'client'
require "pry"

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
  client = select_client(:all_clients)
  return if client.nil?
  $shelter[:clients_waiting_for_animal] << client
  puts "You have submit your adopt appliation successfully."
end

def select_client(list)
  select(list, 'client')
end

def select_animal(list)
  select(list, 'pet')
end


def select(list, thing)
  puts "Choose the #{thing}'s name: \n0. Back"
  $shelter[list].each_index do |i|
    puts "#{i+1}. #{$shelter[list][i]}"
  end
  choice = gets.chomp.to_i
  if choice == 0
    return nil
  else
    $shelter[list][choice - 1]
  end
end


def put_to_adopt
  animal = select_animal(:all_animals)
  return if animal.nil?
  $shelter[:animals_waiting_for_adoption] << animal
  puts "You have put your pet for adoption successfully."
end

def assign_animal
  client = select_client(:clients_waiting_for_animal)
  return if client.nil?
  $shelter[:clients_waiting_for_animal].delete(client)
  animal = select_animal(:animals_waiting_for_adoption)
  return if animal.nil?
  $shelter[:animals_waiting_for_adoption].delete(animal)
  $shelter[:all_animals].delete(animal)
  client.num_pets += 1
end

def print_list (list)
  if $shelter[list].empty?
    puts "   ====  NO RECORDS  ===="
  else
    puts $shelter[list]
  end 
end

$shelter[:all_animals] << Animal.new("Black", 4, "Femail", "pig", ["headphoen", "paddy"])
$shelter[:all_clients] << Client.new("May Wang", 0, 32, 0)

loop do
  menu = {  '1' => { text: "Add a client", code: lambda { add_client } },
            '2' => { text: 'Add an animal', code: lambda { add_animal } },
            '3' => { text: 'Submit adoption application', code: lambda { adopt_application } },
            '4' => { text: 'Put an animal up for adoption', code: lambda { put_to_adopt } },
            '5' => { text: 'Assign animal to client', code: lambda { assign_animal } },
            '6' => { text: 'List all clients', code: lambda { print_list(:all_clients) } },
            '7' => { text: 'List all animals', code: lambda { print_list(:all_animals) } },
            '8' => { text: 'List clients waiting to adopt', code: lambda { print_list(:clients_waiting_for_animal) } },
            '9' => { text: 'List animals waiting to be adopted', code: lambda { print_list(:animals_waiting_for_adoption) } },
            'q' => { text: 'Quit', code: lambda { exit } },
            'x' => { text: 'binding.pry', code: lambda { binding.pry } } }

  puts "Welcome to our terminal site."
  menu.each_key { |k| puts "#{k}. #{menu[k][:text]}" }

  print "Please enter your selections: "

  selection = gets.chomp.downcase
  if menu[selection].nil?
    puts "Invalid choice"
  else
    menu[selection][:code].call
  end
end
