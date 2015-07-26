require "pry"
require "set"

# Make a program to guess a letter. If it guesses, no turns will be deducted.
#need a block to downcase word in the array
word_list = ["cookies", "kittens", "fairies",
             "words", "linux", "lisp", "music",
             "songs","beer", "love", "fun",
             "code", "cake", "motocycles", "telephone",
             "read", "print", "dodge", "loop",
             "macro", "ruby"]

def welcome
    puts "Welcome to the Hangman!"
    puts
    puts "Guess the word. You only have 4 turns, unless guessed correctly. "
    puts
    puts "Rules: 1) Enter the 'word' or 'one character at the time' "
    puts
    #other way to add a hint- Give the letter for the empty space they request.
    puts "You can get no more than 3 hints. If you request a hint, one turn is deducted"
end
#this method will take the random word and and print the hint 2
def word_hint_sentence(word)
    if word_list[0]
        puts "It's rounded and could potentially have chocolate chips on top"
    elsif word_list[1]
        puts "Jerry does not like them because the chase him all the time"
    elsif word_list[2]
        puts "It tranformed Fiona into a not so much attractive female"
    elsif word_list[3]
        puts "I can be composed with one letter or more"
    elsif word_list[4]
        puts "It can be an Operating System"
    elsif word_list[5]
        puts "A programming language"
    elsif word_list[6]
        puts "Something we hear using headphones"
    elsif word_list[7]
        puts "It has lyrics"
    elsif word_list[8]
        puts "Is the one of the main cause of car accident in the United States"
    elsif word_list[9]
        puts "Is a feeling that only God knows where it comes from"
    elsif word_list[10]
        puts "Something everybody do and love it"
    elsif word_list[11]
        puts "Something programmers love to craft"
    elsif word_list[12]
        puts "We all get it in our birthdays"
    elsif word_list[13]
        puts "It has only to wheels"
    elsif word_list[14]
        puts "It needed to communicate"
    elsif word_list[15]
        puts "The main purpose we buy books"
    elsif word_list[16]
        puts "One way to extract information from a computer"
    elsif word_list[17]
        puts "American Auto brand"
    elsif word_list[18]
        puts "It's endless method in programming"
    elsif word_list[19]
        puts "The opposite of micro"
    else word_list[20]
        puts "It the most elegant programming language, but it can also be a precious rock"
    end
end

def need_hint(word)
    puts "Do you want a hint?(y/n) "
    answer = gets.chomp
    until answer =~ /^[y|n]$/i
        puts "You can only enter 'y' or 'n' "
        answer = gets.chomp
        if answer == "y"
            puts   "#{hint1}"
            turns_count -= 1
        end
    end
end

def play_again?
puts "Do you want to play again? (y/n)"
    answer = gets.chomp
    until answer =~ /^[y|n]$/i
        puts "you can only enter y or n"
        answer = gets.chomp
        if answer == "y"
            puts "Ok"
        elsif answer == "n"
            puts "Bye"
        end
    end
end

# # def hint_1(word)
# #convers the string into array of characters, each inside a string
#     new_word = word.chars
# #hint 1 selects the word and replace each word with "-"
#     hint1 = new_word.each do
#             |word_replace| word_replace.replace("-")
#             end
# #selects the first empty element of the array
#     first_letter = word.chars.first
# #replaces the element with the letter of the word
#     hint1.first.replace(first_letter)

# #selects the last empty element of the array
#     last_letter = word.chars.last
# #replaces the last element of with the letter of the word
#     hint1.last.replace(last_letter)
# # end

#turn allowed
turns_count = 4
#selects the a random word from the list and returns a string
word = word_list.sample
#this will allow to create the hint 1. Prints out the array with the first and last letter of the word
word_to_chars = word.chars
#converts the word into an array of chars
word_to_set = word.chars.to_set
#guesses will be store in the array
guesses = []
#letter allow for every guess
letter = ("a".."z").to_a
#input the guess
puts "Guess the word #{word}: "
guess = gets.chomp.downcase
# guess1 = gets.chomp.downcase
# guess2 = gets.chomp.downcase
# guess3 = gets.chomp.downcase
#push the guess to the guesses array
    guesses << guess
    # guesses<<guess1
    # guesses<<guess2
    # guesses<<guess3

#take the guesses array and convert it to string with no spaces
guesses_to_string = guesses * ("")
#take the string of the guesses and convert it to an array of chars
guesses_back_to_array = guesses_to_string.chars.to_set

#it will match the the guesses and letter array and return an array of only the matched letters
guesses_match_letter = guesses_back_to_array & letter
#Using subsets
matched_with_subset = word_to_set.subset?(guesses_back_to_array)
#convers the string into array of characters, each inside a string





#have to find a way to print an empty array of [ " - " ]
#find a way where the user guess can changed the proper empty dash.

# until guesses == word_to_set
#     puts "try it again #{word}"
#     guess = gets.chomp.downcase
#         guesses << guess


#         puts "#{guesses}"
#     if guesses == word_to_set
#         puts "you won!"
#     end

# end






# binding.pry


=begin
Things to do

1) regexp to validate the correct input

4) write three different hints.
    hint 2
    hint 3

6) I have to find a way to compair each charcter an make sure is equal to any of the abc
letter2[(letter2)] is extracting === 'Hello'[1].chr


=end