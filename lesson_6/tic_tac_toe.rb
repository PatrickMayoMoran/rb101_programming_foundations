require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARK = ' '
PLAYER_MARK = 'X'
COMPUTER_MARK = 'O'

def prompt(msg)
  puts "=>  #{msg}"
end

def empty_squares(brd)
  brd.keys.select { |square| brd[square] == INITIAL_MARK }
end

def joinor(array, joiner=', ', word=' or ')
  return array.first if array.length <= 1
  return array.join(word) if array.length == 2
  if array.length > 2
    array[0...-1].join(joiner) + word + array.last.to_s
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARK}. Computer is #{COMPUTER_MARK}."
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
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARK }
  new_board
end

def player_marks_spot!(board)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(board))}"
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
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).all? { |mark| mark == PLAYER_MARK }
      return 'Player'
    elsif board.values_at(*line).all? { |mark| mark == COMPUTER_MARK }
      return 'Computer'
    end
  end
  nil
end

def report_winner(player_wins, computer_wins)
  if player_wins == 5
    prompt "You won!"
    true
  elsif computer_wins == 5
    prompt "The Computer won!"
    true
  else
    false
  end
end

loop do
  player_wins = 0
  computer_wins = 0

  loop do
    board = initialize_board

    loop do
      display_board(board)
      player_marks_spot!(board)
      break if winner?(board) || board_full?(board)
      computer_marks_spot!(board)
      break if winner?(board) || board_full?(board)
    end

    display_board(board)

    if winner?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    case detect_winner(board)
    when 'Player' then player_wins += 1
    when 'Computer' then computer_wins += 1
    end

    prompt "You have won #{player_wins} and the computer has won #{computer_wins}."
    
    break if report_winner(player_wins, computer_wins)
    
    loop do
      prompt "Ready for the next one? y/n"
      choice = gets.chomp.downcase
      break if choice.start_with?('y')
      prompt "Take your time... the computer will wait"
    end
  end

  prompt "Would you like to play again? y/n"
  choice = gets.chomp.downcase
  break unless choice.start_with?('y')
end

prompt "Thanks for playing; good bye!"
