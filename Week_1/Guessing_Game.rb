# Create a number guessing game. Game should pick a random number between 1 and 100 and ask you for a guess.
# If the guess is less than the number, inform the user and let them guess again.
# If the guess is greater than the number, inform the user and let them guess again. If the guess is correct, inform the user.

# Hint 1: Use .to_i to convert user input to a number. What is it by default?

# Hint 2: Use rand(number) to get a random number between 0 and number
def guessing_game()
    number = rand(100)
    puts "Please guess a number"
    guess = gets.chomp.to_i
    answer = "incorrect"
    until answer == 'correct' do
        if number == guess
            answer = 'correct'
            puts "You win! Congratulation!"
        elsif guess < number
            puts "Your number is to low, try again"
            guess = gets.chomp.to_i
        elsif guess > number
            puts "Your number is too high, try again"
            guess = gets.chomp.to_i
        end
    end
    puts "Do you want to play again?(yes/no)"
    until answer =~ /^[yes|no]$/i
        puts "You can only answer yes or no"
        answer = gets.chomp
        if answer == "yes"
            guessing_game
        else
            puts "thank you for playing this game. Come back soon!"
        end
    end
end
guessing_game


#require 'pry'


#This snippet of code deletes consecutive numbers or words

def destutter(*numbers_or_words)
    array = []
    inputs = numbers_or_words.each do |input|
        array << input
    end
#to delter duplicates I had to use select to be able to use enumerable methods, in this case, with_index. This method allows a block that takes to arguments, which allows me to compare if the are consecutive.
    inputs.select.with_index{ |unique, consecutive| unique != inputs[consecutive+1] }
end

puts destutter(1,1,1,1,1,1,1,1,2,1)