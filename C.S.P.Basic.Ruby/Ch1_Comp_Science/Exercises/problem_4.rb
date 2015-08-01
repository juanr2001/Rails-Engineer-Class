#------- IN PROGRESS  ------

# Craft an 3 different algorithm pretending each is a maze with different sizes and difficulty.

#1st maze

# Step 1 - Think of the problem.
=begin

  -maze consist in going the other side, however if it gets to a path that is blocked, it has to go
    back.
        - I can play with true-false for each move
        -I can count moves, and for every false, I can deduct points.
        -Do ASCII Art
=end


up = true || false
down = true || false
right = true || false
left = true || false

move_start = 0
moves += 1

puts "Start moving "
move = gets.chomp

#legal moves
def legal_move
    legal = up || down || right || left
end

def move_counts
    move_start
    if move = legal_move
        moves
    end
end