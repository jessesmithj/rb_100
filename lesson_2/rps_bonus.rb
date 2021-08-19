VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_COMBINATION = { rock: ['lizard', 'scissors'],
                        paper: ['rock', 'spock'],
                        scissors: ['paper', 'lizard'],
                        spock: ['rock', 'scissors'],
                        lizard: ['spock', 'paper'] }

VALID_PLAYER_CHOICES = { rock: ['ro', 'rock'],
                         paper: ['pa', 'paper'],
                         scissors: ['sc', 'scissors'],
                         spock: ['sp', 'spock'],
                         lizard: ['li', 'lizard'] }

scoreboard = { player: 0, computer: 0 }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBINATION[first.to_sym].include?(second)
end

def valid_user_choice?(choice)
  VALID_PLAYER_CHOICES.values.flatten.include?(choice)
end

def player_input_to_choice(choice)
  VALID_PLAYER_CHOICES.select { |k, v| v.include?(choice) }
                      .keys[0].to_s
end

def clear_screen
  system 'clear'
end

def pause
  sleep 1
end

def display_results(player, computer)
  if player == computer
    prompt("Cat's game.")
  elsif win?(player, computer)
    prompt("You won!")
  else
    prompt("Computer won!")
  end
end

intro_prompt = <<-INTRO
  Welcome to Rock, Paper, Scissors, Lizard, Spock.

    In life, there are very few shortcuts.
    In this game, there are a few.

    Find a list of valid shortcuts below:
    - rock or 'ro'
    - paper or 'pa'
    - scissors or 'sc'
    - lizard or 'li'
    - spock or 'sp'

    Keep it clean. Have fun!
INTRO

def retrieve_player_choice
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    choice = Kernel.gets().chomp().downcase

    if valid_user_choice?(choice)
      choice = player_input_to_choice(choice)
      break
    else
      puts "Invalid input. Must choose rock, paper, scissors, lizard or spock."
    end
  end

  return choice
end

def display_match_results(player_scr, computer_scr)
  prompt("Score - You: #{player_scr}  Computer: #{computer_scr}")

  if player_scr == 3
    prompt("You won the match!")
  elsif computer_scr == 3
    prompt("Computer won the match!")
  end
end


def play_round
  player_score = 0
  computer_score = 0

  loop do
    player_choice = retrieve_player_choice
    computer_choice = VALID_CHOICES.sample()

    prompt("You chose #{player_choice}. Computer chose #{computer_choice}.")
    pause
    display_results(player_choice, computer_choice)

    player_score += 1 if win?(player_choice, computer_choice)
    computer_score += 1 if win?(computer_choice, player_choice)
    display_match_results(player_score, computer_score)

    break if player_score == 3 || computer_score == 3
  end
end

def play_again?
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase
end

prompt(intro_prompt)

loop do
  play_round
  
  break unless play_again?.start_with?('y')
  clear_screen
end

prompt("Thanks for playing. Goodbye!")