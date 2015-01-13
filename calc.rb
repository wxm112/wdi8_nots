# $gem instll rainbow
# require 'rainbow'

def read_choice
	puts "Welcome to May's Calculator!"
	puts "Available functions: "
	puts "1. Addition"
	puts "2. Subtract"
	puts "3. Multiply"
	puts "4. Division"
	puts "5. Exponents"
	puts "6. Square roots"

	puts "Q.Quit"

	print "Please enter your selections: "

	choice = gets.chomp.downcase
	choice
end

def add(number1,number2)
	result = number1 + number2
	puts "The result is: #{result}"
end

def sub(number1,number2)
	result = number1 - number2
	puts "The result is: #{result}"
end

def multply(number1,number2)
	result = number1 * number2
	puts "The result is: #{result}"
end 

def division(number1,number2)
	result = number1 / number2
	puts "The result is: #{result}"
end

def expo(number1,number2)
	result = number1 ** number2
	puts "The result is: #{result}"
end

def square_roots(n)
	result = Math.sqrt(n)
	puts "The result is: #{result}"
end

menu_selection = read_choice

if menu_selection != "q" && menu_selection != '6'
	print "Enter the first number: "
	n1 = gets.to_i
	print "Enter the second number: "
	n2 = gets.to_i
elsif menu_selection == '6'
	print "Enter your number: "
	n = gets.to_i	
end	

while menu_selection != "q"
	case menu_selection
	when '1'
		add(n1,n2)
	when '2'
		sub(n1,n2)
	when '3'
		multply(n1,n2)
	when '4'
		division(n1,n2)
	when '5'
		expo(n1,n2)
	when '6'
		square_roots(n)
	else
		puts "Unknown function"
	end
	menu_selection = read_choice
		if menu_selection != "q" && menu_selection != '6'
			print "Enter the first number: "
			n1 = gets.to_i
			print "Enter the second number: "
			n2 = gets.to_i
		elsif menu_selection == '6'
			print "Enter your number: "
			n = gets.to_i	
		end	
end

puts "Thank you for using Crappy Calc"
