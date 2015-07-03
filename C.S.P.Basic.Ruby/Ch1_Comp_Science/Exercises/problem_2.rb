#2.
        #Craft an alogorithm that will sum the first n numbers(assuming n >= 1).
        #a)

            #inject method allows me to add numbers inside ranges. For example: (1..3) == 1+2 =3 3+3 = 6
                def add_with_in_ranges(number1, number2)
                    number = (number1..number2)
                    number.inject {|sum, n| sum + n }
                end
        #b)
            #Looped to so the user input a digit and not a character
                def enter_number
                    puts "Please enter the first number: "
                    number1 = gets.chomp
                    until number1 =~ /^\d+$/
                        puts "Only enter numbers: "
                        number1 = gets.chomp
                    end

                    puts "Please enter the second number: "
                    number2 = gets.chomp
                    until number2 =~ /^\d+$/
                        puts "Only enter numbers: "
                        number2 = gets.chomp
                    end
            #I set result so I could iterate
                    result = add_with_in_ranges(number1.to_i, number2.to_i)

                    puts "The result is: #{result}"
                end
            #I did not need to create this method, but I did it to be more explicit.
                def game_with_ranges
                    enter_number
                end
            # I could use puts ("puts game_with_ranges"), but it works both ways.
                game_with_ranges