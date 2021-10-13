def prompt(msg)
  puts ">> #{msg}"
end

def initialize_deck
  deck = []
  cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  cards.each do |card|
    deck << ['H', card.to_s] << ['D', card.to_s] \
         << ['C', card.to_s] << ['S', card.to_s]
  end
  deck.shuffle
end

def deal_cards!(deck)
  cards = []
  2.times { |_| cards << deck.pop }
  cards
end

def joinarr(arr)
  if arr.size == 2
    arr.join(" and ")
  else
    arr[-1] = "and #{arr.last}"
    arr.join(", ")
  end
end

def display_cards(cards)
  hand = []
  cards.each do |card|
    hand << card[1]
  end
  joinarr(hand)
end

def hit!(deck)
  card = []
  card << deck.pop
  card.flatten # flatten since it's an array of ararys
end

def total(cards)
  values = cards.map { |card| card[1] } # array of card values

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correction if Ace in hand and hand total is over 21
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

# gameplay
deck = initialize_deck
player_cards = deal_cards!(deck)
dealer_cards = deal_cards!(deck)

prompt "Welcome to Twenty-One. Good luck."
puts ""
prompt "Dealer's Top Card: #{dealer_cards[0][1]}"
prompt "Your Hand: #{display_cards(player_cards)} Total: #{total(player_cards)}"

loop do # main game loop (breaks if player/dealer busts)
  loop do # player turn
    prompt "Would you like to stay or hit?"
    answer = gets.chomp
    break if answer.start_with?("s") || busted?(player_cards)
    player_cards << hit!(deck)
    puts ""
    prompt "Your Hand: #{display_cards(player_cards)}"
    prompt "Your total is #{total(player_cards)}"
  end

  break if busted?(player_cards)
  # dealer turn
  prompt "Dealer's Hand: #{display_cards(dealer_cards)}"
  prompt "Dealer's total is #{total(dealer_cards)}"

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) > 17
    prompt "Dealer hits"
    sleep 1
    dealer_cards << hit!(deck)
    prompt "Dealer's Hand: #{display_cards(dealer_cards)}"
    prompt "Dealer's total is #{total(dealer_cards)}"
  end

  break if busted?(dealer_cards)

  # determine winner
  puts "=============="
  prompt "Player total: #{total(player_cards)}"
  prompt "Dealer total: #{total(dealer_cards)}"
  puts "=============="
  sleep 1

  if total(dealer_cards) > total(player_cards)
    prompt "Dealer wins"
  elsif total(dealer_cards) == total(player_cards)
    prompt "It's a tie"
  else
    prompt "Player wins"
  end
  break
end

sleep 1
if busted?(player_cards)
  prompt "Player busts. Dealer wins!"
elsif busted?(dealer_cards)
  prompt "Dealer busts. Winnder, winnder, chicken dinner, Player!"
end

prompt "Thanks for playing Twenty-One."

#### PSUEDOCODE - High Level
# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

#### Original Deal Cards Method, before I remembmer shuffle method
# def deal_cards!(deck)
#   cards = []
#   2.times do |_|
#     random_card = deck.sample
#     cards << random_card
#     deck.delete(random_card)
#   end
#   cards
# end
