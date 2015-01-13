# ---Stept 1

# secret_number = 5 # Random.rand(11)

# print "Enter your guess (between 0 and 10): "
# guess = gets.to_i

# until guess == secret_number
# 	puts "Guess again!"
# 	print "Enter your guess (between 0 and 10): "
# 	guess = gets.to_i
# end

# puts "Congratulations, you got it"

# ---Stept 2

# secret_number = Random.rand(11)
# puts "**** DEBUGGING: " + secret_number.to_s

# print "Enter your guess (between 0 and 10): "
# guess = gets.to_i

# until guess == secret_number
# 	puts "Guess again!"
# 	print "Enter your guess (between 0 and 10): "
# 	guess = gets.to_i
# end

# puts "Congratulations, you got it"

# ---Stept 3
# print "What upper bound would you like to play with?: "
# MAX_GUESS = gets.to_i

# # +1 to go up to AND INCLUDING THE MAX_GUESS
# secret_number = Random.rand(MAX_GUESS + 1)

# print "Enter your guess (between 0 and #{MAX_GUESS}): "
# guess = gets.to_i

# until guess == secret_number

# 	if guess > secret_number
# 		puts "Guess lower"
# 	else
# 		puts "Guess higher"
# 	end

# 	print "Enter your guess (between 0 and #{MAX_GUESS}): "

# 	guess = gets.to_i
# end

# puts "Congratulations, you got it"

# ---Stept 4

# print "Please enter the maximum number: "
# MAX = gets.to_i
# secret_number = Random.rand(MAX + 1)

# while true
# 	print "What's your guess? (between 0 and #{MAX})"
# 	guess_number = gets.to_i
# 	if guess_number > secret_number 
# 		puts "Wrong, guess lower."
# 	elsif guess_number < secret_number 
# 		puts "Wrong, guess higher."
# 	else
# 		puts "Congratulations! Your won!"
# 		false
# 	end
# end
