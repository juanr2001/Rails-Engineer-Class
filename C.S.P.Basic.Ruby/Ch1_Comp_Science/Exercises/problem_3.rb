#3)


# A palindrom program.


def welcome
    puts "\s\s\s\s\s\s\s\s\sWelcome to my Palindrom Program!"
end

def input_sentence_or_word
    puts "Please enter a sentence or word: "
end

def again?
    puts "Do you want to play again?(yes/no)"
    input = gets.chomp
    until input =~ /^yes|no$/i
        puts "You can only answer yes or no"
        input = gets.chomp
        if input != "yes"
            puts "thank you for playing this game. Come back soon!"
        else
            game
        end
    end
end

def game
    input_sentence_or_word
    input = gets.chomp
    result = Regexp.new('([\d\s\W])')
    to_downcase_input = input.downcase
    remove_none_letters = to_downcase_input.gsub(result,"")
    each_letter = remove_none_letters.chars
    first_half_input = each_letter.first(each_letter.count/2)
    second_half_input = each_letter.last(each_letter.count/2).reverse

     if first_half_input == second_half_input
        puts "#{input}' is a Palindrom"
    else
        puts "#{input} is not Palindrom"
     end

    puts "Do you want to play again?"
    until input =~ /^yes|no$/i
        puts "You can only answer yes or no: "
        input = gets.chomp
        if input == "yes"
            game
        else
            puts "Thank you for playing this game. Come back soon!"
        end
    end

end
welcome
puts
game



# #----------------------This is how i started the problem. -----------------------
# ####This does not have regexp. So, as long as you input letters with spaces (no characters), it should work perfectly.



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



# #---------    This is a better program to play with, you can enter any word or sentence, and It will tell you if it's a Palindrom




    puts "Please enter a sentence or word: "
    input = gets.chomp

        # I needed Regexp to be able to remove every character to be able to compare the string.
        #This rusult variable store thie Regexp that  allows every none-letter-characters, spaces, digits.
    result = Regexp.new('([\d\s\W])')
        #Downcase method is needed so I can compare only downcase letters. In other words, upcase (A) & downcase (a) are not equal.
    to_downcase_input = input.downcase

        #gsub method allowed me to pass two paramerers, Regexp and substitute with empty string, I coud also put a space between the string and use "delete_space" variable to be able to delete spaces. (see below)
        #---- delete_spaces = remove_none_letters.delete " "
    remove_none_letters = to_downcase_input.gsub(result,"")

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