





#------------------ TURN

def turn(board)
  
  
  puts 'Please enter 1-9:'
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts 'try again with a valid input'
    turn(board)
  end
  
  
end



#------------------ DISPLAY BOARD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



#------------------ VALID MOVE + POSITION TAKEN

def valid_move?(board, index)
  if (index.between?(0,8)) && (position_taken?(board, index) == false)
    true
  else
    false
  end
end


def position_taken?(board, index)
  if (board[index] == ' ') || (board[index] == '') || (board[index] == nil)
    false
  else (board[index] == 'X') || (board[index] == 'O')
    true
  end
end



#------------------ MOVE

def move(board, board_index, player_token = 'X')
  board[board_index] = player_token
end


def input_to_index(user_input)
  board_index = user_input.to_i - 1
end




