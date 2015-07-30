up = true || false
down = true || false
right = true || false
left = true || false

move_start = 0
moves += 1

puts "Your move"
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