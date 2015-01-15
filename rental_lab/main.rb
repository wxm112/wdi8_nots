
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'
# def read_choice
#   puts "Welcome to our website."
#   puts "Staff please choose 1, clients please choose 2:"
#   menu1 = gets.chomp
#   if menu1 == "1"
#     puts "1. Adding a building to the available list."
#     puts "2. Adding an apartment to the available list."
#     puts "Q. Quit"

#     print "Please enter your selections: "
#     stuff_choice = gets.chomp.downcase
#   else
#     puts "1. Building list"
#     puts "2. apartments list"
#     puts "Q. Quit"

#     print "Please enter your selections: "
#     cline_choice = gets.chomp.downcase
#   end
# end
# read_choice

def create_tenant
  puts "Tenant Creation:"
  print "Enter tenant name: "
  name = gets.chomp

  print "Enter tenant age: "
  age = gets.chomp

  print "Enter tenant gender: "
  gender = gets.chomp

  tenant = Tenant.new name, age, gender
  tenant
end

# tenants = []
# tenants << create_tenant

def create_apartment
  puts "Apartment Creation:"
  print "Enter apartment name: "
  name = gets.chomp

  print "Enter the square feet of the apartment: "
  sqft = gets.chomp

  print "Enter the number of bathrooms: "
  num_bathrooms = gets.chomp

  print "Enter the number of bedrooms: "
  num_bedrooms = gets.chomp

  apartment = Apartment.new name, sqft, num_bathrooms, num_bedrooms

  print "Is there any tenant? (y/n): "
  answer = gets.chomp
  if answer == "y"
    apartment.tenants << create_tenant
  end
    apartment
  end

  apartments = []
  apartments << create_apartment


  # def create_building
  #   puts "Building Creation:"
  #   print "Enter the Building's address: "
  #   address = gets.chomp

  #   print "Enter the style of the building: "
  #   style = gets.chomp

  #   print "If the building has doorman? (y/n): "
  #   has_doorman = gets.chomp

  #   print "If the building has elevator? (y/n): "
  #   has_elevator = gets.chomp

  #   print "Enter the number of floors: "
  #   num_floors = gets.chomp

  #   print "Enter the apartment's number: "
  #   apartment_numer = gets.chomp.to_i

  #   print "Enter the apartment: "
  #   apartment = gets.chomp


  #   building = Building.new address, style, has_doorman, has_elevator, num_floors
  #   building.apartments[apartment_numer] = apartment
  #   building
  # end

  # buildings = []
  # buildings << create_building





  require 'pry'
  binding.pry
