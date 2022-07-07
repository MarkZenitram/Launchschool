require 'pry'

DECK = [['D', 'A'], ['D', 'K'], ['D', 'Q'], ['D', 'J'], ['D', '2'],
        ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'],
        ['D', '8'], ['D', '9'], ['D', '10'],['C', 'A'], ['C', 'K'],
        ['C', 'Q'], ['C', 'J'], ['C', '2'], ['C', '3'], ['C', '4'], 
        ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], 
        ['C', '10'],['H', 'A'], ['H', 'K'], ['H', 'Q'], ['H', 'J'], 
        ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], 
        ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'],['S', 'A'],
        ['S', 'K'], ['S', 'Q'], ['S', 'J'], ['S', '2'], ['S', '3'], 
        ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], 
        ['S', '9'], ['S', '10']]

CARD_VALUE = { 'K' => 10, 'Q' => 10, 'J' => 10 }

player = []
dealer = []

def prompt(msg)
  puts "==> #{msg}"
end

def initialize_deck
  active_deck = DECK
  active_deck
end

#Gives player or dealer a card
def deal_card(participant, deck)
  participant << deck.sample
  deck.delete(participant.last)
end

#converts hand of strings into ints except "A"
def convert_hand_to_int(participant)
  value_cards =[]
  participant.each {|arr| value_cards << arr[1]}.flatten
  new_hand = []

  value_cards.each do |card|
    if CARD_VALUE.keys.include?(card)
      new_hand << CARD_VALUE[card]
    elsif card == 'A'
      new_hand << card
    else
      new_hand << card.to_i
    end
  end
  new_hand
end


#calculate total value
def total_value(participant)
  hand = convert_hand_to_int(participant)
  total_ints = 0
  hand.each { |card| total_ints += card if card.class == Integer}

  possible_a_combination = []
  number_of_a = hand.count("A")

  #total without accounting for As
  if hand.include?("A")
    number_of_a.times do |number|
      possible_a_combination << 1
      possible_a_combination << 11
    end
    possible_a_combination = possible_a_combination.combination(number_of_a).each.sort
    possible_a_combination = possible_a_combination.map {|value| value.inject(:+)}.uniq
    possible_a_combination = possible_a_combination.map {|value| value + total_ints}
    possible_a_combination = possible_a_combination.select {|values| values <= 21}
    total_ints = possible_a_combination.max
  else
    total_ints
  end
  total_ints
end

#find winner
def winner?(plyr, dlr)
  if total_value(plyr) > 21
    "Dealer"
  elsif total_value(plyr) == total_value(dlr)
    "Tie!"
  elsif total_value(dlr) > 21
    "you"
  elsif total_value(plyr) > total_value(dlr)
    "you"
  else
    "Dealer"
  end
end

#create a deck of cards
playing_deck = initialize_deck

#starting cards given to player and dealer
2.times { deal_card(player, playing_deck) }
2.times { deal_card(dealer, playing_deck) }

#Pplayer turn
loop do
  prompt("Dealer:#{dealer[0]}. Player:#{player}")
  break if total_value(player) >= 21

  prompt("Hit or stay?")
  response = gets.chomp.downcase

  if response.start_with?('h')
    deal_card(player, playing_deck)
    prompt("Your total is #{total_value(player)}")
  else
    prompt("Your total is #{total_value(player)}")
  end
  break if response.start_with?('s') || player.size == 5 || total_value(player) >= 21
end

loop do
  break if total_value(dealer) > 16 || dealer.size == 5 || total_value(player) > 21

  if total_value(dealer) < 17
    deal_card(dealer, playing_deck)
    prompt("Dealer total is #{total_value(dealer)}")
  else
    prompt("Dealer total is #{total_value(dealer)}")
  end
end

prompt("Dealer:#{dealer}: #{total_value(dealer)}. Player:#{player}: #{total_value(player)}")
prompt("The winner is #{winner?(player,dealer)}")



  







