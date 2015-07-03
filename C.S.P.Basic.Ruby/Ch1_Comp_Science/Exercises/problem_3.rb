#3)


    # A palindrom program.
#----------------------This is how i started the problem. -----------------------
####This does not have regexes. So, as long as you input letters with spaces (no characters), it should work perfectly.
#---------- Select all the code and uncommented to be able to use it in the Terminal


    puts "Please enter a sentence or word: "
    input = gets.chomp
    downcase_input = input.downcase


    letter = downcase_input.delete " "
    input_no_spaces = letter.chars
    #this variable is the first half of the input after it deletes spaces.
    first_half_input = input_no_spaces.first(input_no_spaces.count/2)
    #this variable is the other half of the input, need to revese it to match the first_half_input
    second_half_input = input_no_spaces.last(input_no_spaces.count/2).reverse


     if first_half_input == second_half_input
        puts "#{input}' is a Palindrom"
    else
        puts "#{input} is not Palindrom"
     end



#---------    This is a better program to play with, you can enter any word or sentence, and It will tell you if it's a Palindrom
#---------------  Select all the code and uncommented to be able to use it in the Terminal



    puts "Please enter a sentence or word: "
    input = gets.chomp

        # I needed Regexp to be able to remove every character to be able to compare the string.
        #This Regexp allows every character, spaces, digits.
    result = Regexp.new('([\d\s\W])')
        #Downcase method is needed so I can compare only downcase letters. In other words, upcase (A) & downcase (a) are not equal.
    to_downcase_input = input.downcase

        #gsub method allowed me to pass two paramerers, Regexp and substitute with empty string, I coud also put a space between the string and use "delete_space" method to be able to delete spaces. (see below)
    remove_none_letters = to_downcase_input.gsub(result,"")
        #---- delete_spaces = remove_none_letters.delete " "

        #after i remove non-letter-characters, I used chars to get an array back
    each_letter = remove_none_letters.chars

        #This method is the key. I counted the array collection of indexes, in this case, letters. I devided by 2, and I used the "first" method to get the first half of the array
    first_half_input = each_letter.first(each_letter.count/2)
        #this variable is the other half of the array, I needed to revese it to match the first_half_input.
    second_half_input = each_letter.last(each_letter.count/2).reverse

        #this conditional simply compares the input method, if it matches then is a Palindrom. Else, is not!!!!

     if first_half_input == second_half_input
        puts "#{input}' is a Palindrom"
    else
        puts "#{input} is not Palindrom"
     end


#------------ I broke this into functions, it is the same as the code above.

#require "pry"

def enter_a_letter_or_sentence
    puts "Please enter a sentence or word: "
end

def regexp
    Regexp.new('([\d\s\W])')
end

def remove_non_letters(input, regexp)
    input.gsub(regexp,"")
end

def first_half_sentence_or_letter(input)
   input.chars.first(input.chars.count/2)
end

def second_half_sentence_or_letter(input)
    input.chars.last(input.chars.count/2).reverse
end


def palindrom?(input)
     if first_half_sentence_or_letter(input) == second_half_sentence_or_letter(input)
        puts "'#{input}' is a Palindrom"
    else
        puts "'#{input}' is not Palindrom"
     end
end

def game
    enter_a_letter_or_sentence
    input = gets.chomp.downcase
    non_letters = remove_non_letters(input, regexp)
    first_half_sentence_or_letter(non_letters)
    second_half_sentence_or_letter(non_letters)
    palindrom?(input)
end

puts game

#binding.pry