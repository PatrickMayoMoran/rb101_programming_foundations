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
  hash.each {|k, v| puts "#{k} for #{v}"}
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

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
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

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
