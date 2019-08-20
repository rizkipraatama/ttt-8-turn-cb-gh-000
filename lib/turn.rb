def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false
    return true
  else
    return true
  end
end


def position_taken?(board, input)
  index = move(input);
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, value="X")
  board[index] = value
end

def input_to_index(input)
  newint = input.to_i
  return newint - 1
end

def turn
  puts "Please Enter 1-9 :"
end
