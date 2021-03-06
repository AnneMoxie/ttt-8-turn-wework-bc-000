board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

input = gets.strip

def input_to_index(input)
  input.i_1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index) 
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board) 
  #ask for input
  #get input
  #convert input to index
  #if valid then make the move for index and show board
  #else ask for input again until you get a valid move and end
   puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end
