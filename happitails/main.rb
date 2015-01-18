require_relative 'animal'
require_relative 'client'
require "pry"

$shelter = {:all_animals => [],
            :animals_waiting_for_adoption => [],
            :all_clients => [],
            :clients_waiting_for_animal => []}

def get_user_input(prompts)
  result = {}
  prompts.each_key do |k|
    print "Enter #{prompts[k]}: "
    result[k] = gets.chomp
  end
  result
end

def add_client
  v = get_user_input({ name: "name",  num_children: "number of children", age: "age", num_pets: "the number of pets"})
  $shelter[:all_clients] << Client.new(v[:name], v[:num_children].to_i, v[:age], v[:num_pets].to_i)
  puts "You have add #{v[:name]} successfully."
end

def add_animal
  v = get_user_input({ name: "the animal's name",
                       age: "the animal's age",
                       gender: "the animal's gender",
                       species: "the animal's species",
                       toys: "the animal's toys (please separate with space)" })

  $shelter[:all_animals] << Animal.new(v[:name], v[:age], v[:gender], v[:species], v[:toys].split)
  puts "You have add #{v[:name]} successfully."
end


def with_selected_client(list)
  client = select(list, 'client')
  return if client.nil?
  yield client
end

def with_selected_animal(list)
  animal = select(list, 'pet')
  return if animal.nil?
  yield animal
end

def adopt_application
  with_selected_client(:all_clients) do |client|
    $shelter[:clients_waiting_for_animal] << client
    puts "You have submit your adopt appliation successfully."
  end
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
  with_selected_animal(:all_animals) do |animal|
    $shelter[:animals_waiting_for_adoption] << animal
    puts "You have put your pet for adoption successfully."
  end
end

def assign_animal
  with_selected_client(:clients_waiting_for_animal) do |client|
    with_selected_animal(:animals_waiting_for_adoption) do |animal|
      $shelter[:clients_waiting_for_animal].delete(client)
      $shelter[:animals_waiting_for_adoption].delete(animal)
      $shelter[:all_animals].delete(animal)
      client.num_pets += 1
    end
  end
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
