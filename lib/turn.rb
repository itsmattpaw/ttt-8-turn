def turn(board)
    valid = false
    while valid == false do
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
        valid = valid_move?(board, index)
    end
    move(board, index)
    display_board(board)
end


def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index >= 0 && index <= 9
        position_taken?(board, index)
    else
        return false
    end
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
        return false
    else 
        move(board,index)
        return true
    end
end

def input_to_index(input)
    index = input.to_i - 1
end
  
def move(board,index,value = "X")
    board[index] = value
end