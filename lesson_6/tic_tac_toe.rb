INITIAL_MARK = ' '
PLAYER_MARK = 'X'
COMPUTER_MARK = 'O'

def prompt(msg)
  puts "=>  #{msg}"
end

def empty_squares(brd)
  brd.keys.select {|square| brd[square] == INITIAL_MARK}
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARK}
  new_board
end

board = initialize_board

display_board(board)

def player_marks_spot!(board)
  square = ''
  loop do
    prompt "Choose a square: #{empty_squares(board).join(', ')}"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Not a valid choice, choose again"
  end
  board[square] = PLAYER_MARK
end

def computer_marks_spot!(board)
  square = empty_squares(board).sample
  board[square] = COMPUTER_MARK
end

def board_full?(board)
  empty_squares(board).empty?
end

def winner?(board)
  false
end

loop do
  player_marks_spot!(board)
  computer_marks_spot!(board)
  display_board(board)
  break if winner?(board) || board_full?(board)
end

display_board(board)
# computer_marks_spot
# winner?