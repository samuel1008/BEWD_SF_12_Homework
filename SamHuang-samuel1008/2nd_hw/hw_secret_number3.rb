require 'pry'
#Welcome player to your game
print "Welcome to Secret # by Samuel1008"
my_welcome = gets.chomp
#Ask for player's name
puts "Whats your name"
user_name = gets.chomp.capitalize
print "Hi #{user_name}!"
my_hi = gets.chomp
print "The rules are simple, you have 10 tries to guess a number between 1 and 100"
my_rules = gets.chomp

my_number = rand(1...50)
your_guess = 0
while your_guess < 10
	your_guess += 1
	puts "Guess a number between 1 and 100"
	user_guess = gets.chomp.to_i

	if my_number == user_guess
		puts "Yay! You've right on the money!"
		break
		elsif my_number > user_guess
		puts "too low"
	else 
		puts "too high"
	end
	if your_guess == 10
	puts "Sorry, the correct number was #{my_number}"
	end
end

