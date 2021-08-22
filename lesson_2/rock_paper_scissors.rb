VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
WINNING_CONDITIONS = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  spock: ['rock', 'scissors'],
  lizard: ['paper', 'spock']
}
ABBREVIATIONS = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  sp: 'spock',
  l: 'lizard'
}

def win?(first, second)
  WINNING_CONDITIONS[first.to_sym].include?(second)
end

def display_options(hash)
  hash.each { |k, v| puts "#{k} for #{v}" }
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

def game_over?(player_wins, computer_wins)
  player_wins == 3 || computer_wins == 3
end

def display_winner(player_wins)
  if player_wins == 3
    prompt("You won the match! Congratulations!")
  else
    prompt("The computer won - better luck next time!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Play a match
loop do
  player_wins = 0
  computer_wins = 0

  # Play a single round
  loop do
    choice = ''

    # Choose your option
    loop do
      display_options(ABBREVIATIONS)
      prompt("Choose one: ")
      choice = Kernel.gets().chomp()

      if ABBREVIATIONS.keys.include?(choice.to_sym)
        choice = ABBREVIATIONS[choice.to_sym]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()

    Kernel.puts("You chose #{choice}; computer chose #{computer_choice}.")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_wins += 1
    elsif win?(computer_choice, choice)
      computer_wins += 1
    end

    prompt("Player has won #{player_wins}, computer has won #{computer_wins}.")

    if game_over?(player_wins, computer_wins)
      display_winner(player_wins, computer_wins)
      break
    end
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
