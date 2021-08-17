VALID_CHOICES = %w(rock paper scissors)

def display_results(player, computer)
  if player == computer
    prompt("Cat's game.")
  elsif (player == 'rock' && computer == 'scissors') ||
        (player == 'paper' && computer == 'rock') ||
        (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  else
    prompt("Computer won!")
  end
end

# def validate_choice(choice)
#   VALID_CHOICES.include?(choice)
# end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase

    break if VALID_CHOICES.include?(choice)
    puts "Invalid input. Must choose rock, paper or sciessors."
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose #{choice}. Computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase

  break unless answer.start_with?('y')
end

prompt("Thanks for playing. Goodbye!")
